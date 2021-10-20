.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/content/ContextCompat;-><init>()V

    .line 377
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .locals 6

    .prologue
    .line 370
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 371
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 372
    new-instance v2, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    move-object v1, v2

    .line 374
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 177
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatJB;->finishAffinity(Landroid/app/Activity;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 194
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->finishAfterTransition(Landroid/app/Activity;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 108
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 109
    const/4 v1, 0x1

    move v0, v1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 254
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 11
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 316
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v4, :cond_0

    .line 318
    new-instance v4, Landroid/os/Handler;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, v4

    .line 319
    move-object v4, v3

    new-instance v5, Landroid/support/v4/app/ActivityCompat$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 232
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 234
    :cond_0
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 248
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 250
    :cond_0
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 363
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 133
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/ActivityCompatJB;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 162
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/ActivityCompatJB;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 260
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 207
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/app/ActivityCompat22;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    .line 218
    :goto_0
    return-object v0

    .line 209
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v2, v5

    .line 210
    move-object v5, v2

    const-string v6, "android.intent.extra.REFERRER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v3, v5

    .line 211
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 212
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 214
    :cond_1
    move-object v5, v2

    const-string v6, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 215
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 216
    move-object v5, v4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 218
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
