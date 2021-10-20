.class abstract Landroid/support/design/widget/HeaderBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 43
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 45
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 45
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object v0, v1

    return-object v0
.end method

.method private ensureVelocityTracker()V
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 274
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 232
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v6

    .line 233
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 236
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v6, :cond_1

    .line 237
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 240
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v8

    const/4 v9, 0x0

    move v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-virtual/range {v6 .. v14}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 246
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;-><init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v7, v6, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 248
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 249
    const/4 v6, 0x1

    move v0, v6

    .line 251
    :goto_0
    return v0

    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    move v0, v2

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v9, :cond_0

    .line 57
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, v9, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 60
    :cond_0
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move v4, v9

    .line 63
    move v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v9, :cond_1

    .line 64
    const/4 v9, 0x1

    move v0, v9

    .line 116
    :goto_0
    return v0

    .line 67
    :cond_1
    move-object v9, v3

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 112
    :cond_2
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_3

    .line 113
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 116
    :cond_3
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    move v0, v9

    goto :goto_0

    .line 69
    :pswitch_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 70
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move v5, v9

    .line 71
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    move v6, v9

    .line 72
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    move-object v10, v2

    move v11, v5

    move v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    move-object v9, v0

    move v10, v6

    iput v10, v9, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 74
    move-object v9, v0

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    iput v10, v9, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 75
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_1

    .line 81
    :pswitch_1
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    move v5, v9

    .line 82
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 84
    goto :goto_1

    .line 86
    :cond_4
    move-object v9, v3

    move v10, v5

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    move v6, v9

    .line 87
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 88
    goto :goto_1

    .line 91
    :cond_5
    move-object v9, v3

    move v10, v6

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    float-to-int v9, v9

    move v7, v9

    .line 92
    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v8, v9

    .line 93
    move v9, v8

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v9, v10, :cond_2

    .line 94
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 95
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_1

    .line 102
    :pswitch_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 103
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 104
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    .line 105
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v7, :cond_0

    .line 122
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 125
    :cond_0
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 187
    :cond_1
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 188
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 191
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    :goto_1
    return v0

    .line 127
    :pswitch_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v4, v7

    .line 128
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 130
    move-object v7, v1

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 132
    move-object v7, v0

    move-object v8, v3

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 133
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 141
    :pswitch_1
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    move v4, v7

    .line 143
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 144
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 147
    :cond_4
    move-object v7, v3

    move v8, v4

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 148
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    move v8, v5

    sub-int/2addr v7, v8

    move v6, v7

    .line 150
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v7, :cond_5

    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v7, v8, :cond_5

    .line 151
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 152
    move v7, v6

    if-lez v7, :cond_6

    .line 153
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 159
    :cond_5
    :goto_2
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v7, :cond_1

    .line 160
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 162
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v6

    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/design/widget/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v7

    goto/16 :goto_0

    .line 155
    :cond_6
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_2

    .line 168
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_7

    .line 169
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 171
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-static {v7, v8}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v7

    move v4, v7

    .line 173
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v10

    neg-int v10, v10

    const/4 v11, 0x0

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Landroid/support/design/widget/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v7

    .line 177
    :cond_7
    :pswitch_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 178
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 179
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 180
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 181
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v3

    sub-int/2addr v9, v10

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v6

    move v0, v6

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v4 .. v9}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v4

    move v0, v4

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v8

    move v6, v8

    .line 202
    const/4 v8, 0x0

    move v7, v8

    .line 204
    move v8, v4

    if-eqz v8, :cond_0

    move v8, v6

    move v9, v4

    if-lt v8, v9, :cond_0

    move v8, v6

    move v9, v5

    if-gt v8, v9, :cond_0

    .line 207
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v8

    move v3, v8

    .line 209
    move v8, v6

    move v9, v3

    if-eq v8, v9, :cond_0

    .line 210
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v8

    .line 212
    move v8, v6

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 216
    :cond_0
    move v8, v7

    move v0, v8

    return v0
.end method
