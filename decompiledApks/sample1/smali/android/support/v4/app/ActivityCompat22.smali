.class Landroid/support/v4/app/ActivityCompat22;
.super Ljava/lang/Object;
.source "ActivityCompat22.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
