.class public Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 79
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;-><init>(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 35
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private shouldIgnore()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    move v0, v1

    return v0
.end method


# virtual methods
.method getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-object v0, v1

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    move-object v4, v2

    const-class v5, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    move-object v4, v1

    instance-of v4, v4, Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    move-object v3, v4

    .line 69
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 57
    move-object v3, v2

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const/4 v4, 0x1

    move v0, v4

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 48
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
