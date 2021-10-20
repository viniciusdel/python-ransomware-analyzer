.class Landroid/support/design/widget/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static constrain(FFF)F
    .locals 5

    .prologue
    .line 26
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method static constrain(III)I
    .locals 5

    .prologue
    .line 22
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method
