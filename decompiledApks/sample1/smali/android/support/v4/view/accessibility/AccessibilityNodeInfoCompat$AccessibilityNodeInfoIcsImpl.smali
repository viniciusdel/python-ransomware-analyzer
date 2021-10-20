.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1220
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 1238
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addAction(Ljava/lang/Object;I)V

    .line 1239
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1243
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 1244
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1253
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getActions(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1258
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1259
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1263
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1264
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1268
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChildCount(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1278
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1298
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1303
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isCheckable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1318
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isClickable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocusable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocused(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isLongClickable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1348
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isSelected(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1223
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1228
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1233
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 5

    .prologue
    .line 1358
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->performAction(Ljava/lang/Object;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1453
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 1454
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1363
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1364
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1368
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1369
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1373
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setCheckable(Ljava/lang/Object;Z)V

    .line 1374
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1378
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 1379
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 1383
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1384
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClickable(Ljava/lang/Object;Z)V

    .line 1389
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1394
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1398
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 1399
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1403
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocusable(Ljava/lang/Object;Z)V

    .line 1404
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1408
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocused(Ljava/lang/Object;Z)V

    .line 1409
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1413
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setLongClickable(Ljava/lang/Object;Z)V

    .line 1414
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 1418
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1419
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1423
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 1424
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1428
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 1429
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1433
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 1434
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 1438
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSelected(Ljava/lang/Object;Z)V

    .line 1439
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1443
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 1444
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1449
    return-void
.end method
