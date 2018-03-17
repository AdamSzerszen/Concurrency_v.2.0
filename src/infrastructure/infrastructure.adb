with Ada.Text_IO; use Ada.Text_IO;
package body Infrastructure is

   protected body Steering is
      entry SetNumber(CorrectNumber: in SteeringNumber)
        when OwnNumber = -1 is
      begin
         OwnNumber := CorrectNumber;
      end;
      entry Incoming(CurrentTram: in TramNumber)
        when not CurrentlyOccupied is
      begin
         CurrentlyOccupied := True;
         OccupierNumber := CurrentTram;
      end;
      entry Leaving
        when CurrentlyOccupied is
      begin
         CurrentlyOccupied := False;
         OccupierNumber := -1;
      end;
      entry CheckStatus
        when True is
         currentOccupierString: String := TramNumber'Image(OccupierNumber);
         steeringNumberString: String := SteeringNumber'Image(OwnNumber);
      begin
         Put("Steering: ");
         Put(steeringNumberString);
         if CurrentlyOccupied then
            Put(" occupied by tram: ");
            Put_Line(currentOccupierString);
         else
            Put_Line(" empty");
         end if;
      end;
   end Steering;

end Infrastructure;
