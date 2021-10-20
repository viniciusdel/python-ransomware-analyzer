.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1083
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public combineMeasuredStates(II)I
    .locals 5

    .prologue
    .line 1240
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->combineMeasuredStates(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1090
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method getFrameTime()J
    .locals 3

    .prologue
    .line 1086
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getPivotX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1221
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getPivotY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotation(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotationX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getRotationY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1207
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getScaleY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1182
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getX(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 1187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 1226
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 7

    .prologue
    .line 1110
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 1235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setActivated(Landroid/view/View;Z)V

    .line 1236
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1142
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    .line 1143
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 1104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1106
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1107
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 1094
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1095
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setPivotX(Landroid/view/View;F)V

    .line 1175
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1178
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setPivotY(Landroid/view/View;F)V

    .line 1179
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotation(Landroid/view/View;F)V

    .line 1155
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotationX(Landroid/view/View;F)V

    .line 1159
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1162
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setRotationY(Landroid/view/View;F)V

    .line 1163
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 1230
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1231
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1166
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    .line 1167
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1170
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    .line 1171
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1134
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    .line 1135
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    .line 1139
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1146
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setX(Landroid/view/View;F)V

    .line 1147
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatHC;->setY(Landroid/view/View;F)V

    .line 1151
    return-void
.end method
