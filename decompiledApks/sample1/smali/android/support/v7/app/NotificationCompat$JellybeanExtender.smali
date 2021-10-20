.class Landroid/support/v7/app/NotificationCompat$JellybeanExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanExtender"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/app/NotificationCompat;->access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 111
    move-object v4, v2

    invoke-interface {v4}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v4

    move-object v3, v4

    .line 112
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/app/NotificationCompat;->access$400(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 113
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method
