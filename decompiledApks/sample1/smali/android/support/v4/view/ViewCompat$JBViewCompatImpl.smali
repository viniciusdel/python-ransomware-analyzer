.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1324
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 7

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/ViewCompatJB;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 1370
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1371
    new-instance v3, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    .line 1373
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1398
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1351
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1383
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 1378
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1403
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->hasTransientState(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 1365
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatJB;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1335
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1336
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 1339
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1340
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 1347
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v1

    move-object v6, v2

    move-wide v7, v3

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1348
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatJB;->requestApplyInsets(Landroid/view/View;)V

    .line 1394
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 1331
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatJB;->setHasTransientState(Landroid/view/View;Z)V

    .line 1332
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1358
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1359
    const/4 v3, 0x2

    move v2, v3

    .line 1361
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1362
    return-void
.end method
