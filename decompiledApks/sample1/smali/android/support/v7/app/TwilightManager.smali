.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$1;,
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static final sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>(Landroid/support/v7/app/TwilightManager$1;)V

    sput-object v0, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 47
    move-object v2, v0

    move-object v3, v1

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, v2, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 48
    return-void
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    const/4 v4, 0x0

    move-object v1, v4

    .line 83
    const/4 v4, 0x0

    move-object v2, v4

    .line 85
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 87
    move v4, v3

    if-nez v4, :cond_0

    .line 88
    move-object v4, v0

    const-string v5, "network"

    invoke-direct {v4, v5}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    move-object v1, v4

    .line 91
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 93
    move v4, v3

    if-nez v4, :cond_1

    .line 94
    move-object v4, v0

    const-string v5, "gps"

    invoke-direct {v4, v5}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    move-object v2, v4

    .line 97
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 99
    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object v4, v2

    :goto_0
    move-object v0, v4

    .line 102
    :goto_1
    return-object v0

    .line 99
    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 102
    :cond_3
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v2

    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    goto :goto_2
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_0

    .line 109
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 116
    :goto_0
    return-object v0

    :cond_0
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 113
    const-string v3, "TwilightManager"

    const-string v4, "Failed to get last known location"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private isStateValid(Landroid/support/v7/app/TwilightManager$TwilightState;)Z
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 27
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    sget-object v20, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    move-object/from16 v5, v20

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 126
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v20

    move-object/from16 v8, v20

    .line 129
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    const-wide/32 v23, 0x5265c00

    sub-long v21, v21, v23

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    invoke-virtual/range {v20 .. v26}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 131
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v20, v0

    move-wide/from16 v9, v20

    .line 134
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    invoke-virtual/range {v20 .. v26}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 135
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    :goto_0
    move/from16 v11, v20

    .line 136
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .line 137
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v20, v0

    move-wide/from16 v14, v20

    .line 140
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    const-wide/32 v23, 0x5265c00

    add-long v21, v21, v23

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    invoke-virtual/range {v20 .. v26}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 142
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    move-wide/from16 v16, v20

    .line 145
    const-wide/16 v20, 0x0

    move-wide/from16 v18, v20

    .line 146
    move-wide/from16 v20, v12

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v14

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 148
    :cond_0
    move-wide/from16 v20, v6

    const-wide/32 v22, 0x2932e00

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    .line 162
    :goto_1
    move-object/from16 v20, v5

    move/from16 v21, v11

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 163
    move-object/from16 v20, v5

    move-wide/from16 v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 164
    move-object/from16 v20, v5

    move-wide/from16 v21, v12

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 165
    move-object/from16 v20, v5

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 166
    move-object/from16 v20, v5

    move-wide/from16 v21, v16

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 167
    move-object/from16 v20, v5

    move-wide/from16 v21, v18

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 168
    return-void

    .line 135
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 150
    :cond_2
    move-wide/from16 v20, v6

    move-wide/from16 v22, v14

    cmp-long v20, v20, v22

    if-lez v20, :cond_3

    .line 151
    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    .line 158
    :goto_2
    move-wide/from16 v20, v18

    const-wide/32 v22, 0xea60

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_1

    .line 152
    :cond_3
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 153
    move-wide/from16 v20, v18

    move-wide/from16 v22, v14

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_2

    .line 155
    :cond_4
    move-wide/from16 v20, v18

    move-wide/from16 v22, v12

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_2
.end method


# virtual methods
.method isNight()Z
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    sget-object v5, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    move-object v1, v5

    .line 58
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/app/TwilightManager;->isStateValid(Landroid/support/v7/app/TwilightManager$TwilightState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    move v0, v5

    .line 78
    :goto_0
    return v0

    .line 64
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v5

    move-object v2, v5

    .line 65
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 66
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 67
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    move v0, v5

    goto :goto_0

    .line 70
    :cond_1
    const-string v5, "TwilightManager"

    const-string v6, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move-object v3, v5

    .line 77
    move-object v5, v3

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v4, v5

    .line 78
    move v5, v4

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x16

    if-lt v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
