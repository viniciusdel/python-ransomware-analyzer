.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    .line 257
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 260
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 262
    const/4 v5, 0x1

    move v0, v5

    .line 278
    :goto_1
    return v0

    .line 257
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 263
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v5

    if-nez v5, :cond_5

    .line 266
    move v5, v3

    if-eqz v5, :cond_3

    move v5, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 267
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 270
    move v5, v3

    if-eqz v5, :cond_7

    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    move v5, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 278
    :cond_9
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 273
    :cond_a
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 274
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v6}, Landroid/support/design/widget/SwipeDismissBehavior;->access$300(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v4, v5

    .line 275
    move v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v6, v4

    if-lt v5, v6, :cond_b

    const/4 v5, 0x1

    :goto_4
    move v0, v5

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    goto :goto_4
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 10

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 292
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v7}, Landroid/support/design/widget/SwipeDismissBehavior;->access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v7

    if-nez v7, :cond_2

    .line 293
    move v7, v4

    if-eqz v7, :cond_1

    .line 294
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 295
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v6, v7

    .line 313
    :goto_1
    move v7, v5

    move v8, v2

    move v9, v6

    invoke-static {v7, v8, v9}, Landroid/support/design/widget/SwipeDismissBehavior;->access$400(III)I

    move-result v7

    move v0, v7

    return v0

    .line 288
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 297
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v5, v7

    .line 298
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 300
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v7}, Landroid/support/design/widget/SwipeDismissBehavior;->access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 301
    move v7, v4

    if-eqz v7, :cond_3

    .line 302
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v5, v7

    .line 303
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 305
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 306
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v6, v7

    goto :goto_1

    .line 309
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 310
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 223
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v11}, Landroid/support/design/widget/SwipeDismissBehavior;->access$500(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 325
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v11}, Landroid/support/design/widget/SwipeDismissBehavior;->access$600(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    .line 328
    move v9, v2

    int-to-float v9, v9

    move v10, v6

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 329
    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    move v9, v2

    int-to-float v9, v9

    move v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    .line 331
    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 334
    :cond_1
    move v9, v6

    move v10, v7

    move v11, v2

    int-to-float v11, v11

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result v9

    move v8, v9

    .line 335
    move-object v9, v1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v8

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, v12}, Landroid/support/design/widget/SwipeDismissBehavior;->access$700(FFF)F

    move-result v10

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 14

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move v4, v7

    .line 236
    const/4 v7, 0x0

    move v6, v7

    .line 238
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 239
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v8, v4

    sub-int/2addr v7, v8

    :goto_0
    move v5, v7

    .line 242
    const/4 v7, 0x1

    move v6, v7

    .line 248
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v7}, Landroid/support/design/widget/SwipeDismissBehavior;->access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    move v8, v5

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    move-object v7, v1

    new-instance v8, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    move-object v11, v1

    move v12, v6

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_2
    return-void

    .line 239
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v8, v4

    add-int/2addr v7, v8

    goto :goto_0

    .line 245
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v5, v7

    goto :goto_1

    .line 250
    :cond_3
    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v7}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 251
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v7}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    return v0
.end method
