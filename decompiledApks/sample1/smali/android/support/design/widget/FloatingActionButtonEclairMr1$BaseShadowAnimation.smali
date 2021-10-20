.class abstract Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
.super Landroid/view/animation/Animation;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseShadowAnimation"
.end annotation


# instance fields
.field private mShadowSizeDiff:F

.field private mShadowSizeStart:F

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 243
    return-void
.end method

.method protected abstract getTargetShadowSize()F
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/animation/Animation;->reset()V

    .line 236
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v2}, Landroid/support/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v2

    iput v2, v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    .line 237
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->getTargetShadowSize()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    .line 238
    return-void
.end method
