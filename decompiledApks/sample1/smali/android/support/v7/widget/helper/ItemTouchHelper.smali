.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 7

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 163
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 168
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 173
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 202
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 212
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 228
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 238
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 265
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 272
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 279
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 286
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 426
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 427
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/helper/ItemTouchHelper;)I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    move v0, v2

    return v0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 6

    .prologue
    .line 1232
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1235
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v1, :cond_1

    .line 1236
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1254
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1255
    goto :goto_0
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 9

    .prologue
    .line 1187
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, v2

    const/16 v7, 0xc

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_3

    .line 1188
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/16 v6, 0x8

    :goto_0
    move v3, v6

    .line 1189
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1190
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v6, v7}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v6

    move v4, v6

    .line 1192
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/16 v6, 0x8

    :goto_1
    move v5, v6

    .line 1193
    move v6, v5

    move v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v6, v3

    move v7, v5

    if-ne v6, v7, :cond_2

    move v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 1195
    move v6, v5

    move v0, v6

    .line 1206
    :goto_2
    return v0

    .line 1188
    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    .line 1192
    :cond_1
    const/4 v6, 0x4

    goto :goto_1

    .line 1199
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float/2addr v6, v7

    move v4, v6

    .line 1202
    move v6, v2

    move v7, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1203
    move v6, v3

    move v0, v6

    goto :goto_2

    .line 1206
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 21

    .prologue
    .line 932
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v15, :cond_0

    move v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 934
    :cond_0
    const/4 v15, 0x0

    move v2, v15

    .line 986
    :goto_0
    return v2

    .line 936
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 937
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 939
    :cond_2
    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    move-object v6, v15

    .line 940
    move-object v15, v6

    if-nez v15, :cond_3

    .line 941
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 943
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v15

    move v7, v15

    .line 945
    move v15, v7

    const v16, 0xff00

    and-int v15, v15, v16

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    move v8, v15

    .line 948
    move v15, v8

    if-nez v15, :cond_4

    .line 949
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 954
    :cond_4
    move-object v15, v4

    move/from16 v16, v5

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    move v9, v15

    .line 955
    move-object v15, v4

    move/from16 v16, v5

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    move v10, v15

    .line 958
    move v15, v9

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v11, v15

    .line 959
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v12, v15

    .line 962
    move v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v13, v15

    .line 963
    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v14, v15

    .line 965
    move v15, v13

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    move v15, v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    .line 966
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 968
    :cond_5
    move v15, v13

    move/from16 v16, v14

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    .line 969
    move v15, v11

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    move v15, v8

    const/16 v16, 0x4

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_6

    .line 970
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 972
    :cond_6
    move v15, v11

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_9

    .line 973
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 976
    :cond_7
    move v15, v12

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8

    move v15, v8

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_8

    .line 977
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 979
    :cond_8
    move v15, v12

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x2

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_9

    .line 980
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 983
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v2

    const/16 v17, 0x0

    move-object/from16 v19, v16

    move/from16 v20, v17

    move/from16 v16, v20

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 984
    move-object v15, v2

    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 985
    move-object v15, v2

    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 986
    const/4 v15, 0x1

    move v2, v15

    goto/16 :goto_0
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 9

    .prologue
    .line 1210
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, v2

    const/4 v7, 0x3

    and-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_3

    .line 1211
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/4 v6, 0x2

    :goto_0
    move v3, v6

    .line 1212
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1213
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v6, v7}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v6

    move v4, v6

    .line 1215
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v6, 0x2

    :goto_1
    move v5, v6

    .line 1216
    move v6, v5

    move v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v6, v5

    move v7, v3

    if-ne v6, v7, :cond_2

    move v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 1218
    move v6, v5

    move v0, v6

    .line 1228
    :goto_2
    return v0

    .line 1211
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 1222
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float/2addr v6, v7

    move v4, v6

    .line 1224
    move v6, v2

    move v7, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1225
    move v6, v3

    move v0, v6

    goto :goto_2

    .line 1228
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 7

    .prologue
    .line 466
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 467
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 468
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 470
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 471
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_0

    .line 472
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v3, v4

    .line 473
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 471
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 475
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 476
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 477
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 478
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 479
    return-void
.end method

.method private endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 10

    .prologue
    .line 867
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 868
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_2

    .line 869
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v5, v6

    .line 870
    move-object v6, v5

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 871
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget-boolean v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    move v8, v2

    or-int/2addr v7, v8

    iput-boolean v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 872
    move-object v6, v5

    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 873
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 875
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 876
    move-object v6, v5

    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)I

    move-result v6

    move v0, v6

    .line 879
    :goto_1
    return v0

    .line 868
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 879
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 7

    .prologue
    .line 1106
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1107
    const/4 v5, 0x0

    move-object v0, v5

    .line 1116
    :goto_0
    return-object v0

    .line 1109
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 1110
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 1111
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v4, v5

    .line 1112
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    .line 1113
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1110
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1116
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 13

    .prologue
    .line 991
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v2, v7

    .line 992
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v3, v7

    .line 993
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_0

    .line 994
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v7

    .line 995
    move-object v7, v4

    move v8, v2

    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 996
    move-object v7, v4

    move-object v0, v7

    .line 1006
    :goto_0
    return-object v0

    .line 999
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_1
    move v7, v4

    if-ltz v7, :cond_2

    .line 1000
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v5, v7

    .line 1001
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v7

    .line 1002
    move-object v7, v6

    move v8, v2

    move v9, v3

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1003
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 999
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1006
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 756
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 757
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 762
    :goto_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v22

    move/from16 v4, v22

    .line 763
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 764
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v6, v22

    .line 765
    move/from16 v22, v5

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v7, v22

    .line 766
    move/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 767
    move/from16 v22, v5

    move/from16 v23, v7

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v9, v22

    .line 768
    move/from16 v22, v6

    move/from16 v23, v8

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v10, v22

    .line 769
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v22

    move-object/from16 v11, v22

    .line 770
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v22

    move/from16 v12, v22

    .line 771
    const/16 v22, 0x0

    move/from16 v13, v22

    :goto_1
    move/from16 v22, v13

    move/from16 v23, v12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 772
    move-object/from16 v22, v11

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v14, v22

    .line 773
    move-object/from16 v22, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 771
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 759
    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 760
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 776
    :cond_2
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 778
    goto :goto_2

    .line 780
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v22

    move-object/from16 v15, v22

    .line 781
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v25, v15

    invoke-virtual/range {v22 .. v25}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 783
    move/from16 v22, v9

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v16, v22

    .line 784
    move/from16 v22, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v17, v22

    .line 785
    move/from16 v22, v16

    move/from16 v23, v16

    mul-int v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v17

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 787
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 788
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v20, v22

    .line 789
    const/16 v22, 0x0

    move/from16 v21, v22

    :goto_3
    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 790
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v23, v0

    move/from16 v24, v21

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 791
    add-int/lit8 v19, v19, 0x1

    .line 789
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 796
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move-object/from16 v24, v15

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 797
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move/from16 v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 800
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v2, v22

    return-object v2
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11

    .prologue
    .line 903
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v2, v9

    .line 904
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 905
    const/4 v9, 0x0

    move-object v0, v9

    .line 925
    :goto_0
    return-object v0

    .line 907
    :cond_0
    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    move v3, v9

    .line 908
    move-object v9, v1

    move v10, v3

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v9, v10

    move v4, v9

    .line 909
    move-object v9, v1

    move v10, v3

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v9, v10

    move v5, v9

    .line 910
    move v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 911
    move v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 913
    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 914
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 916
    :cond_1
    move v9, v6

    move v10, v7

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 917
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 918
    :cond_2
    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 919
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 921
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 922
    move-object v9, v8

    if-nez v9, :cond_4

    .line 923
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 925
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 6

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    const/16 v3, 0xc

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    .line 491
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 495
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 496
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 500
    :goto_1
    return-void

    .line 493
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v4

    aput v4, v2, v3

    goto :goto_0

    .line 498
    :cond_1
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    aput v4, v2, v3

    goto :goto_1
.end method

.method private hasRunningRecoverAnim()Z
    .locals 5

    .prologue
    .line 679
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 680
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 681
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-static {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    const/4 v3, 0x1

    move v0, v3

    .line 685
    :goto_1
    return v0

    .line 680
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 8

    .prologue
    .line 430
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v1

    move v6, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v1

    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move v5, v2

    move v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v2

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 10

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/view/GestureDetectorCompat;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$1;)V

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 487
    goto :goto_0
.end method

.method private moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 17

    .prologue
    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 840
    :goto_0
    return-void

    .line 810
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 811
    goto :goto_0

    .line 814
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v9

    move v2, v9

    .line 815
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v3, v9

    .line 816
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v4, v9

    .line 817
    move v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    move v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 820
    goto :goto_0

    .line 822
    :cond_2
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 823
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 824
    goto :goto_0

    .line 827
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    move-object v11, v5

    move v12, v3

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v6, v9

    .line 828
    move-object v9, v6

    if-nez v9, :cond_4

    .line 829
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 830
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 831
    goto/16 :goto_0

    .line 833
    :cond_4
    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v7, v9

    .line 834
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v8, v9

    .line 835
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 837
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    move v12, v8

    move-object v13, v6

    move v14, v7

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    .line 840
    :cond_5
    goto/16 :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 3

    .prologue
    .line 889
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 890
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 892
    :cond_0
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 893
    return-void
.end method

.method private postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 10

    .prologue
    .line 657
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 676
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 3

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 897
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 898
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 900
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne v2, v3, :cond_0

    .line 1259
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1261
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v2, :cond_0

    .line 1262
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1265
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 19

    .prologue
    .line 692
    move-object/from16 v0, p0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v11, :cond_0

    .line 693
    move-object v11, v0

    const-wide/high16 v12, -0x8000000000000000L

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 694
    const/4 v11, 0x0

    move v0, v11

    .line 751
    :goto_0
    return v0

    .line 696
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v1, v11

    .line 697
    move-object v11, v0

    iget-wide v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    const-wide/16 v11, 0x0

    :goto_1
    move-wide v3, v11

    .line 699
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v11

    move-object v5, v11

    .line 700
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v11, :cond_1

    .line 701
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 703
    :cond_1
    const/4 v11, 0x0

    move v6, v11

    .line 704
    const/4 v11, 0x0

    move v7, v11

    .line 705
    move-object v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 707
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 708
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 709
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9

    move v11, v9

    if-gez v11, :cond_9

    .line 710
    move v11, v9

    move v6, v11

    .line 720
    :cond_2
    :goto_2
    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 721
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 722
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 723
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    move v11, v9

    if-gez v11, :cond_a

    .line 724
    move v11, v9

    move v7, v11

    .line 733
    :cond_3
    :goto_3
    move v11, v6

    if-eqz v11, :cond_4

    .line 734
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    move v14, v6

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    move-wide/from16 v16, v3

    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v11

    move v6, v11

    .line 738
    :cond_4
    move v11, v7

    if-eqz v11, :cond_5

    .line 739
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move v14, v7

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    move-wide/from16 v16, v3

    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v11

    move v7, v11

    .line 743
    :cond_5
    move v11, v6

    if-nez v11, :cond_6

    move v11, v7

    if-eqz v11, :cond_b

    .line 744
    :cond_6
    move-object v11, v0

    iget-wide v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 745
    move-object v11, v0

    move-wide v12, v1

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 747
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v12, v6

    move v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 748
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 697
    :cond_8
    move-wide v11, v1

    move-object v13, v0

    iget-wide v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long/2addr v11, v13

    goto/16 :goto_1

    .line 711
    :cond_9
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 712
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v10, v11

    .line 715
    move v11, v10

    if-lez v11, :cond_2

    .line 716
    move v11, v10

    move v6, v11

    goto/16 :goto_2

    .line 725
    :cond_a
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 726
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v10, v11

    .line 728
    move v11, v10

    if-lez v11, :cond_3

    .line 729
    move v11, v10

    move v7, v11

    goto/16 :goto_3

    .line 750
    :cond_b
    move-object v11, v0

    const-wide/high16 v12, -0x8000000000000000L

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 751
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0
.end method

.method private select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 32

    .prologue
    .line 536
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 539
    :cond_0
    move-object/from16 v19, v3

    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 540
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 542
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v19

    .line 543
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 544
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 548
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 549
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 551
    :cond_1
    const/16 v19, 0x1

    const/16 v20, 0x8

    const/16 v21, 0x8

    move/from16 v22, v5

    mul-int v21, v21, v22

    add-int v20, v20, v21

    shl-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v7, v19

    .line 553
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 555
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 556
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 557
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 558
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v19, 0x0

    :goto_1
    move/from16 v10, v19

    .line 560
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 564
    move/from16 v19, v10

    sparse-switch v19, :sswitch_data_0

    .line 578
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 579
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 581
    :goto_2
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 582
    const/16 v19, 0x8

    move/from16 v13, v19

    .line 588
    :goto_3
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 589
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v14, v19

    .line 590
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v15, v19

    .line 591
    new-instance v19, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v6

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v10

    move-object/from16 v30, v9

    invoke-direct/range {v20 .. v30}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    move-object/from16 v16, v19

    .line 620
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v23, v14

    sub-float v22, v22, v23

    move/from16 v23, v12

    move/from16 v24, v15

    sub-float v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 622
    move-object/from16 v19, v16

    move-wide/from16 v20, v17

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 623
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 624
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 625
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 630
    :goto_4
    move-object/from16 v19, v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 632
    :cond_2
    move-object/from16 v19, v4

    if-eqz v19, :cond_3

    .line 633
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v20

    move/from16 v21, v7

    and-int v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    const/16 v22, 0x8

    mul-int/lit8 v21, v21, 0x8

    shr-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 636
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 637
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 638
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 640
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 641
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v19

    .line 644
    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v9, v19

    .line 645
    move-object/from16 v19, v9

    if-eqz v19, :cond_4

    .line 646
    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x1

    :goto_5
    invoke-interface/range {v19 .. v20}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 648
    :cond_4
    move/from16 v19, v8

    if-nez v19, :cond_5

    .line 649
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 651
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 652
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 653
    goto/16 :goto_0

    .line 558
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v19

    goto/16 :goto_1

    .line 569
    :sswitch_0
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 570
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 571
    goto/16 :goto_2

    .line 574
    :sswitch_1
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 575
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v12, v19

    .line 576
    goto/16 :goto_2

    .line 583
    :cond_7
    move/from16 v19, v10

    if-lez v19, :cond_8

    .line 584
    const/16 v19, 0x2

    move/from16 v13, v19

    goto/16 :goto_3

    .line 586
    :cond_8
    const/16 v19, 0x4

    move/from16 v13, v19

    goto/16 :goto_3

    .line 627
    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 628
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 646
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupCallbacks()V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 458
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 459
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 460
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 461
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 462
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 463
    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 11

    .prologue
    .line 1141
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1142
    const/4 v7, 0x0

    move v0, v7

    .line 1183
    :goto_0
    return v0

    .line 1144
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v7

    move v2, v7

    .line 1145
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v7

    move v3, v7

    .line 1148
    move v7, v3

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v4, v7

    .line 1150
    move v7, v4

    if-nez v7, :cond_1

    .line 1151
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1153
    :cond_1
    move v7, v2

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v5, v7

    .line 1156
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1157
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_3

    .line 1159
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 1161
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 1164
    :cond_2
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1166
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1167
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1170
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_5

    .line 1171
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1173
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1175
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_6

    .line 1177
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto/16 :goto_0

    .line 1180
    :cond_6
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1183
    :cond_7
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 9

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    move v4, v6

    .line 1121
    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    move v5, v6

    .line 1124
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1125
    move-object v6, v0

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1126
    move v6, v2

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_0

    .line 1127
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1129
    :cond_0
    move v6, v2

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 1130
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1132
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 1133
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1135
    :cond_2
    move v6, v2

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 1136
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1138
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 448
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 450
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 451
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 452
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 454
    :cond_2
    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 885
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 886
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 844
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 849
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 850
    move-object v3, v2

    if-nez v3, :cond_0

    .line 861
    :goto_0
    return-void

    .line 853
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, v4, :cond_2

    .line 854
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 861
    :cond_1
    :goto_1
    goto :goto_0

    .line 856
    :cond_2
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v3

    .line 857
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 518
    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 519
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 520
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 521
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 522
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 524
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-static/range {v6 .. v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$1400(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 526
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 505
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 506
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 507
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 508
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 510
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-static/range {v6 .. v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$1300(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 512
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start drag has been called but swiping is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1056
    :goto_0
    return-void

    .line 1048
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1049
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1051
    goto :goto_0

    .line 1053
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1054
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1055
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1056
    goto :goto_0
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$2200(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1092
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start swipe has been called but dragging is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1103
    :goto_0
    return-void

    .line 1095
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1096
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1098
    goto :goto_0

    .line 1100
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1101
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1102
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1103
    goto :goto_0
.end method
