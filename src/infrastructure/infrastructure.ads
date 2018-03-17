with Units; use Units;

package Infrastructure is


   type Steering;
   type Steering_ptr is access Steering;

   protected type Steering is
      entry SetNumber(CorrectNumber: in SteeringNumber);
      entry Incoming(CurrentTram: in TramNumber);
      entry Leaving;
      entry CheckStatus;
   private
      CurrentlyOccupied: Boolean := False;
      OccupierNumber: TramNumber;
      OwnNumber: SteeringNumber := -1;
   end Steering;

end Infrastructure;
