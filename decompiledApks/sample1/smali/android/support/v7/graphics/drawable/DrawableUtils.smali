.class public Landroid/support/v7/graphics/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 4

    .prologue
    .line 28
    move v0, p0

    move-object v1, p1

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 36
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 29
    :pswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 31
    :pswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 32
    :pswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 33
    :pswitch_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 34
    :pswitch_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    const-string v2, "ADD"

    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
