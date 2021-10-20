.class Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 4

    .prologue
    .line 2851
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    .line 2903
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .prologue
    .line 2855
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2856
    move-object v4, v2

    const-class v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2857
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v4

    move-object v3, v4

    .line 2858
    move-object v4, v3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2859
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v4}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2861
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v5}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2862
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v5}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2863
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v5}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 2865
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 2869
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2870
    move-object v3, v2

    const-class v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2871
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2872
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2873
    move-object v3, v2

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2875
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2876
    move-object v3, v2

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2878
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 2882
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

    .line 2883
    const/4 v4, 0x1

    move v0, v4

    .line 2899
    :goto_0
    return v0

    .line 2885
    :cond_0
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 2899
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2887
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2888
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v5}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2889
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2891
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2893
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2894
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-static {v5}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2895
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2897
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2885
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
