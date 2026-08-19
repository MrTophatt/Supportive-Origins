# Set up Sanctuary timers and area checks
scoreboard objectives add Groved.OwnerID dummy
scoreboard objectives add Groved.OffsetX dummy
scoreboard objectives add Groved.OffsetY dummy
scoreboard objectives add Groved.OffsetZ dummy
scoreboard objectives add Groved.RadiusSq dummy
scoreboard objectives add Groved.BreedAge dummy

# Store projectile and anchor positions
scoreboard objectives add Groved.CrossX dummy
scoreboard objectives add Groved.CrossY dummy
scoreboard objectives add Groved.CrossZ dummy
scoreboard objectives add Groved.SafeX dummy
scoreboard objectives add Groved.SafeY dummy
scoreboard objectives add Groved.SafeZ dummy
scoreboard objectives add Groved.MotionX dummy
scoreboard objectives add Groved.MotionY dummy
scoreboard objectives add Groved.MotionZ dummy
scoreboard objectives add Groved.AnchorX dummy
scoreboard objectives add Groved.AnchorY dummy
scoreboard objectives add Groved.AnchorZ dummy
scoreboard objectives add Groved.MidX dummy
scoreboard objectives add Groved.MidY dummy
scoreboard objectives add Groved.MidZ dummy
scoreboard objectives add Groved.AccelX dummy
scoreboard objectives add Groved.AccelY dummy
scoreboard objectives add Groved.AccelZ dummy

# Check which part of the cylinder was crossed
scoreboard objectives add Groved.SafeRadSq dummy
scoreboard objectives add Groved.CrossRSq dummy
scoreboard objectives add Groved.TestRadIn dummy
scoreboard objectives add Groved.TestYIn dummy
scoreboard objectives add Groved.TestIn dummy
scoreboard objectives add Groved.SafeRadIn dummy
scoreboard objectives add Groved.CrossRIn dummy
scoreboard objectives add Groved.SafeYIn dummy
scoreboard objectives add Groved.CrossYIn dummy
scoreboard objectives add Groved.SafeIn dummy
scoreboard objectives add Groved.CrossedIn dummy
scoreboard objectives add Groved.BisectSt dummy
scoreboard objectives add Groved.HitWall dummy
scoreboard objectives add Groved.HitCap dummy

# Store bounce calculations and constant numbers
scoreboard objectives add Groved.DotProd dummy
scoreboard objectives add Groved.NormalSq dummy
scoreboard objectives add Groved.ReflectM dummy
scoreboard objectives add Groved.TempNum dummy
scoreboard objectives add Groved.ConstNum dummy
scoreboard objectives add Groved.HitGuard dummy
scoreboard objectives add Groved.AnchorSel dummy
scoreboard objectives add Groved.TrackedID dummy
scoreboard objectives add Groved.TrackSide dummy
scoreboard objectives add Groved.TrackTTL dummy
scoreboard objectives add Groved.InRange dummy
scoreboard objectives add Groved.HitFloor dummy
scoreboard objectives add Groved.HitRoof dummy
scoreboard objectives add Groved.InMotionX dummy
scoreboard objectives add Groved.InMotionY dummy
scoreboard objectives add Groved.InMotionZ dummy
scoreboard objectives add Groved.InAccelX dummy
scoreboard objectives add Groved.InAccelY dummy
scoreboard objectives add Groved.InAccelZ dummy
scoreboard objectives add Groved.SpeedInSq dummy
scoreboard objectives add Groved.SpdOutSq dummy
scoreboard objectives add Groved.CheckX dummy
scoreboard objectives add Groved.CheckY dummy
scoreboard objectives add Groved.CheckZ dummy
scoreboard objectives add Groved.SpeedIn dummy
scoreboard objectives add Groved.SpeedOut dummy
scoreboard objectives add Groved.KeepSpeed dummy
scoreboard objectives add Groved.SqrtValue dummy
scoreboard objectives add Groved.SqrtLow dummy
scoreboard objectives add Groved.SqrtHigh dummy
scoreboard objectives add Groved.SqrtMid dummy
scoreboard objectives add Groved.SqrtSq dummy
scoreboard objectives add Groved.SqrtStep dummy
scoreboard objectives add Groved.SqrtRoot dummy
scoreboard players add $NextOwnerID Groved.OwnerID 0
scoreboard players set $Constant2 Groved.ConstNum 2
scoreboard players set $Constant1000 Groved.ConstNum 1000
scoreboard players set $ConstantNeg1 Groved.ConstNum -1
scoreboard players set $Constant999 Groved.ConstNum 999
scoreboard players set $Constant50 Groved.ConstNum 50
scoreboard players set $Constant4 Groved.ConstNum 4
scoreboard players set $Constant3 Groved.ConstNum 3
scoreboard players set $DampeningNumerator Groved.ConstNum 9
scoreboard players set $DampeningDenominator Groved.ConstNum 10
