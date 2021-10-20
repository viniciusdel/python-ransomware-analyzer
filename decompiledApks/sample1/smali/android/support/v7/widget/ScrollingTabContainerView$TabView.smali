.class Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 12

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    .line 387
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 377
    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const v10, 0x10100d4

    aput v10, v8, v9

    iput-object v7, v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 388
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 390
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    move-object v5, v6

    .line 392
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 397
    move v6, v4

    if-eqz v6, :cond_1

    .line 398
    move-object v6, v0

    const v7, 0x800013

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 401
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 402
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 406
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 407
    return-void
.end method

.method public getTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    move-object v0, v1

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 422
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 429
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 431
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x2

    new-array v8, v8, [I

    move-object v2, v8

    .line 522
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V

    .line 524
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, v8

    .line 525
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v8

    move v4, v8

    .line 526
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v8

    move v5, v8

    .line 527
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move v6, v8

    .line 529
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v9}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v7, v8

    .line 532
    move-object v8, v7

    const/16 v9, 0x31

    move-object v10, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v4

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move v11, v6

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 535
    move-object v8, v7

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 536
    const/4 v8, 0x1

    move v0, v8

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 440
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v3, v4, :cond_0

    .line 441
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 444
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 411
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 412
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setSelected(Z)V

    .line 413
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 414
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    .line 447
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    move-object v1, v8

    .line 448
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 449
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 450
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object v3, v8

    .line 451
    move-object v8, v3

    move-object v9, v0

    if-eq v8, v9, :cond_1

    .line 452
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 455
    :cond_1
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 456
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 458
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_3
    :goto_0
    return-void

    .line 462
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 463
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 464
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 467
    :cond_5
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 468
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v4, v8

    .line 470
    move-object v8, v3

    if-eqz v8, :cond_b

    .line 471
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 472
    new-instance v8, Landroid/widget/ImageView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 473
    new-instance v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 475
    move-object v8, v6

    const/16 v9, 0x10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 476
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 478
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 480
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :cond_7
    :goto_1
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 488
    move v8, v5

    if-eqz v8, :cond_d

    .line 489
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 490
    new-instance v8, Landroid/support/v7/widget/AppCompatTextView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    sget v12, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v6, v8

    .line 492
    move-object v8, v6

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 493
    new-instance v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v7, v8

    .line 495
    move-object v8, v7

    const/16 v9, 0x10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 496
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 498
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 500
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    :cond_9
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_a

    .line 508
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 511
    :cond_a
    move v8, v5

    if-nez v8, :cond_e

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 512
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 482
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 483
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 487
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 502
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 503
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 514
    :cond_e
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 515
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
