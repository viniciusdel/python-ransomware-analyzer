.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 7

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v4, v0

    invoke-direct {v4}, Landroid/view/animation/Animation;-><init>()V

    .line 1164
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1165
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    .line 1166
    move-object v4, v0

    move v5, v3

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    .line 1167
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SwitchCompat;FFLandroid/support/v7/widget/SwitchCompat$1;)V
    .locals 9

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    .line 1171
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->access$200(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 1172
    return-void
.end method
