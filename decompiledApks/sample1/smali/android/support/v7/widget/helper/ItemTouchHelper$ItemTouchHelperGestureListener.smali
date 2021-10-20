.class Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 2179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$1;)V
    .locals 5

    .prologue
    .line 2179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 2183
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 14

    .prologue
    .line 2188
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v1

    invoke-static {v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$2400(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 2189
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 2190
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v8}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v3, v8

    .line 2191
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 2192
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    move-object v10, v3

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2217
    :goto_0
    return-void

    .line 2195
    :cond_0
    move-object v8, v1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    move v4, v8

    .line 2199
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v8, v9, :cond_1

    .line 2200
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v8

    move v5, v8

    .line 2202
    move-object v8, v1

    move v9, v5

    invoke-static {v8, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    move v6, v8

    .line 2203
    move-object v8, v1

    move v9, v5

    invoke-static {v8, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    move v7, v8

    .line 2204
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move v9, v6

    iput v9, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 2205
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move v9, v7

    iput v9, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 2206
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v10, 0x0

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v9, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 2211
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2212
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v3

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 2217
    :cond_1
    goto :goto_0
.end method
