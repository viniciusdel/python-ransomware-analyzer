.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimation:Landroid/view/animation/Animation;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 180
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    .line 181
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    .line 182
    return-void
.end method

.method synthetic constructor <init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/StateListAnimator$1;)V
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method getAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    move-object v0, v1

    return-object v0
.end method

.method getSpecs()[I
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    move-object v0, v1

    return-object v0
.end method
