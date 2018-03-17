with Infrastructure; use Infrastructure;

procedure Main is
   test_steering: Steering;
begin
   test_steering.SetNumber(5);
   test_steering.CheckStatus;
   test_steering.Incoming(12);
   test_steering.CheckStatus;
   test_steering.Leaving;
   test_steering.CheckStatus;
end Main;
