.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 9

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1182
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1179
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1183
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1184
    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$300(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1185
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$300(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    move-object v6, v1

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$500(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    move-object v8, v1

    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$700(Landroid/support/design/widget/TabLayout;)I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1189
    move-object v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1190
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1191
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1192
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 7

    .prologue
    .line 1432
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 11

    .prologue
    .line 1355
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v4, v9

    .line 1356
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v5, v9

    .line 1358
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 1359
    move-object v9, v4

    if-eqz v9, :cond_4

    .line 1360
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1362
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1367
    :goto_0
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_0
    move-object v9, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 1371
    move-object v9, v2

    if-eqz v9, :cond_1

    .line 1372
    move v9, v6

    if-eqz v9, :cond_6

    .line 1373
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1375
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1383
    :cond_1
    :goto_2
    move-object v9, v3

    if-eqz v9, :cond_3

    .line 1384
    move-object v9, v3

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v9

    .line 1385
    const/4 v9, 0x0

    move v8, v9

    .line 1386
    move v9, v6

    if-eqz v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 1388
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v10, 0x8

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    move v8, v9

    .line 1390
    :cond_2
    move v9, v8

    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v9, v10, :cond_3

    .line 1391
    move-object v9, v7

    move v10, v8

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1392
    move-object v9, v3

    invoke-virtual {v9}, Landroid/widget/ImageView;->requestLayout()V

    .line 1396
    :cond_3
    move v9, v6

    if-nez v9, :cond_7

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1397
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1402
    :goto_3
    return-void

    .line 1364
    :cond_4
    move-object v9, v3

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1365
    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1370
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 1378
    :cond_6
    move-object v9, v2

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1399
    :cond_7
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1400
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_3
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v0, v1

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1215
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1216
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1221
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1223
    move-object v2, v1

    const-class v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    .prologue
    .line 1406
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x2

    new-array v8, v8, [I

    move-object v2, v8

    .line 1407
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1409
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, v8

    .line 1410
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v8

    move v4, v8

    .line 1411
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v8

    move v5, v8

    .line 1412
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move v6, v8

    .line 1414
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v7, v8

    .line 1417
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

    .line 1420
    move-object v8, v7

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1421
    const/4 v8, 0x1

    move v0, v8

    return v0
.end method

.method public onMeasure(II)V
    .locals 22

    .prologue
    .line 1228
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    move/from16 v5, v18

    .line 1229
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v6, v18

    .line 1230
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    move/from16 v7, v18

    .line 1233
    move/from16 v18, v4

    move/from16 v9, v18

    .line 1235
    move/from16 v18, v7

    if-lez v18, :cond_6

    move/from16 v18, v6

    if-eqz v18, :cond_0

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1239
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v8, v18

    .line 1246
    :goto_0
    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-super/range {v18 .. v20}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1249
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1250
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1251
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)F

    move-result v18

    move/from16 v11, v18

    .line 1252
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    move/from16 v18, v0

    move/from16 v12, v18

    .line 1254
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_7

    .line 1256
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 1262
    :cond_1
    :goto_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextSize()F

    move-result v18

    move/from16 v13, v18

    .line 1263
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v18

    move/from16 v14, v18

    .line 1264
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v18

    move/from16 v15, v18

    .line 1266
    move/from16 v18, v11

    move/from16 v19, v13

    cmpl-float v18, v18, v19

    if-nez v18, :cond_2

    move/from16 v18, v15

    if-ltz v18, :cond_5

    move/from16 v18, v12

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1268
    :cond_2
    const/16 v18, 0x1

    move/from16 v16, v18

    .line 1270
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v18, v11

    move/from16 v19, v13

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    move/from16 v18, v14

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1275
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1276
    move-object/from16 v18, v17

    if-eqz v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v19, v17

    const/16 v20, 0x0

    move/from16 v21, v11

    invoke-direct/range {v18 .. v21}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v18

    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    .line 1278
    :cond_3
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 1282
    :cond_4
    move/from16 v18, v16

    if-eqz v18, :cond_5

    .line 1283
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v20, v11

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1284
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1285
    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-super/range {v18 .. v20}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1289
    :cond_5
    return-void

    .line 1242
    :cond_6
    move/from16 v18, v3

    move/from16 v8, v18

    goto/16 :goto_0

    .line 1257
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1259
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)F

    move-result v18

    move/from16 v11, v18

    goto/16 :goto_1
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 1196
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1197
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1198
    move v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 1199
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1201
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1202
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1204
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 1205
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1208
    :cond_1
    return-void

    .line 1196
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 8

    .prologue
    .line 1292
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v1, v4

    .line 1293
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 1294
    move-object v4, v2

    if-eqz v4, :cond_9

    .line 1295
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 1296
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    .line 1297
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1298
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1300
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1302
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1303
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1304
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 1307
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    :cond_3
    move-object v4, v0

    move-object v5, v2

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1312
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 1313
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1315
    :cond_4
    move-object v4, v0

    move-object v5, v2

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1326
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_b

    .line 1328
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v4, :cond_5

    .line 1329
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v3, v4

    .line 1331
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1332
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1334
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v4, :cond_6

    .line 1335
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_layout_tab_text:I

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    .line 1337
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1338
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1339
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1341
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1342
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1343
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1345
    :cond_7
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1352
    :cond_8
    :goto_1
    return-void

    .line 1318
    :cond_9
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 1319
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1320
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1322
    :cond_a
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1323
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 1348
    :cond_b
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v4, :cond_c

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 1349
    :cond_c
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
