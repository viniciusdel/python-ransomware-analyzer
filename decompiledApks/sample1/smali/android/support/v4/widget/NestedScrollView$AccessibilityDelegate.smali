.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1874
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9

    .prologue
    .line 1931
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1932
    move-object v6, v1

    check-cast v6, Landroid/support/v4/widget/NestedScrollView;

    move-object v3, v6

    .line 1933
    move-object v6, v2

    const-class v7, Landroid/widget/ScrollView;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1934
    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v6

    move-object v4, v6

    .line 1935
    move-object v6, v3

    invoke-static {v6}, Landroid/support/v4/widget/NestedScrollView;->access$000(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 1936
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 1937
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollX(I)V

    .line 1938
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollY(I)V

    .line 1939
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(I)V

    .line 1940
    move-object v6, v4

    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/widget/NestedScrollView;->access$000(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(I)V

    .line 1941
    return-void

    .line 1935
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 1912
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1913
    move-object v5, v1

    check-cast v5, Landroid/support/v4/widget/NestedScrollView;

    move-object v3, v5

    .line 1914
    move-object v5, v2

    const-class v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1915
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1916
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/widget/NestedScrollView;->access$000(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v5

    move v4, v5

    .line 1917
    move v5, v4

    if-lez v5, :cond_1

    .line 1918
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1919
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-lez v5, :cond_0

    .line 1920
    move-object v5, v2

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1922
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 1923
    move-object v5, v2

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1927
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    .prologue
    .line 1877
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1878
    const/4 v7, 0x1

    move v0, v7

    .line 1907
    :goto_0
    return v0

    .line 1880
    :cond_0
    move-object v7, v1

    check-cast v7, Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v7

    .line 1881
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1882
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1884
    :cond_1
    move v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 1907
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1886
    :sswitch_0
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1888
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    add-int/2addr v7, v8

    move-object v8, v4

    invoke-static {v8}, Landroid/support/v4/widget/NestedScrollView;->access$000(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 1890
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 1891
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1892
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 1895
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1897
    :sswitch_1
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1899
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v6, v7

    .line 1900
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 1901
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1902
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 1905
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1884
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
