.class Landroid/support/v4/widget/CompoundButtonCompatApi23;
.super Ljava/lang/Object;
.source "CompoundButtonCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
