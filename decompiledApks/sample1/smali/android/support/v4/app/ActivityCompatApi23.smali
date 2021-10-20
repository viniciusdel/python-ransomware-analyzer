.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompat23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    instance-of v3, v3, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v0

    check-cast v3, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 32
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method
