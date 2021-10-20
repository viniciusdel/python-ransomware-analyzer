.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    invoke-direct/range {v21 .. v24}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    move-object/from16 v21, v2

    new-instance v22, Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 146
    move-object/from16 v21, v2

    const v22, 0x800013

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 158
    move-object/from16 v21, v2

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 161
    move-object/from16 v21, v2

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 163
    move-object/from16 v21, v2

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 167
    move-object/from16 v21, v2

    new-instance v22, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 186
    move-object/from16 v21, v2

    new-instance v22, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 206
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v22, v4

    sget-object v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    move/from16 v24, v5

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v21

    move-object/from16 v6, v21

    .line 209
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 210
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 211
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 212
    move-object/from16 v21, v2

    const/16 v22, 0x30

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 213
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    sget v26, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v25

    move-object/from16 v28, v24

    move/from16 v29, v25

    move/from16 v24, v29

    move-object/from16 v25, v28

    move/from16 v26, v29

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move-object/from16 v28, v23

    move/from16 v29, v24

    move/from16 v23, v29

    move-object/from16 v24, v28

    move/from16 v25, v29

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v28, v22

    move/from16 v29, v23

    move/from16 v22, v29

    move-object/from16 v23, v28

    move/from16 v24, v29

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 216
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v7, v21

    .line 217
    move/from16 v21, v7

    if-ltz v21, :cond_0

    .line 218
    move-object/from16 v21, v2

    move/from16 v22, v7

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 221
    :cond_0
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v8, v21

    .line 222
    move/from16 v21, v8

    if-ltz v21, :cond_1

    .line 223
    move-object/from16 v21, v2

    move/from16 v22, v8

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 226
    :cond_1
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v9, v21

    .line 227
    move/from16 v21, v9

    if-ltz v21, :cond_2

    .line 228
    move-object/from16 v21, v2

    move/from16 v22, v9

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 231
    :cond_2
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v10, v21

    .line 233
    move/from16 v21, v10

    if-ltz v21, :cond_3

    .line 234
    move-object/from16 v21, v2

    move/from16 v22, v10

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 237
    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 239
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v23, -0x80000000

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v11, v21

    .line 242
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v23, -0x80000000

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v12, v21

    .line 245
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v13, v21

    .line 247
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v14, v21

    .line 250
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v21, v0

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 252
    move/from16 v21, v11

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move/from16 v21, v12

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 254
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v21, v0

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 257
    :cond_5
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 258
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 260
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v15, v21

    .line 261
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 262
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_6
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v16, v21

    .line 266
    move-object/from16 v21, v16

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 267
    move-object/from16 v21, v2

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 270
    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 271
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 273
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v17, v21

    .line 274
    move-object/from16 v21, v17

    if-eqz v21, :cond_8

    .line 275
    move-object/from16 v21, v2

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_8
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v18, v21

    .line 278
    move-object/from16 v21, v18

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 279
    move-object/from16 v21, v2

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    :cond_9
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v19, v21

    .line 283
    move-object/from16 v21, v19

    if-eqz v21, :cond_a

    .line 284
    move-object/from16 v21, v2

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_a
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v20, v21

    .line 288
    move-object/from16 v21, v20

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 289
    move-object/from16 v21, v2

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 292
    :cond_b
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 293
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 296
    :cond_c
    move-object/from16 v21, v6

    sget v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 297
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 299
    :cond_d
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 302
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 303
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/Toolbar;)I
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    move v0, v1

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1687
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 1688
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1689
    move v9, v2

    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    move v5, v9

    .line 1692
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 1694
    move v9, v3

    if-eqz v9, :cond_3

    .line 1695
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_1
    move v9, v6

    if-ltz v9, :cond_2

    .line 1696
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1697
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 1698
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_0

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_0

    .line 1700
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1695
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1687
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1713
    :cond_2
    return-void

    .line 1704
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 1705
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1706
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 1707
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_4

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_4

    .line 1709
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1704
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 1064
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1066
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1067
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 1073
    :goto_0
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1075
    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1076
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1081
    :goto_1
    return-void

    .line 1068
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1069
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 1071
    :cond_1
    move-object v5, v3

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    goto :goto_0

    .line 1079
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 9

    .prologue
    .line 1045
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1046
    move-object v2, v0

    new-instance v3, Landroid/widget/ImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1048
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1050
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1051
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1052
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1053
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroid/support/v7/widget/Toolbar$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 6

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 530
    move-object v1, v0

    new-instance v2, Landroid/widget/ImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 532
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 8

    .prologue
    .line 865
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 866
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 868
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v1, v2

    .line 869
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_0

    .line 870
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 872
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 873
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 875
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 7

    .prologue
    .line 878
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v2, :cond_0

    .line 879
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 880
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 881
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 882
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 883
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 884
    move-object v2, v1

    const v3, 0x800005

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 885
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 888
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 9

    .prologue
    .line 1035
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1036
    move-object v2, v0

    new-instance v3, Landroid/widget/ImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1038
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1039
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1040
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 7

    .prologue
    .line 1716
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 1717
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v3, v5

    .line 1718
    move v5, v3

    const/4 v6, 0x7

    and-int/lit8 v5, v5, 0x7

    move v4, v5

    .line 1719
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 1725
    :pswitch_0
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x5

    :goto_0
    move v0, v5

    :goto_1
    return v0

    .line 1723
    :pswitch_1
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 1725
    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 16

    .prologue
    .line 1636
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v3, v12

    .line 1637
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v4, v12

    .line 1638
    move v12, v2

    if-lez v12, :cond_1

    move v12, v4

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    :goto_0
    move v5, v12

    .line 1639
    move-object v12, v0

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v12, v13}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 1649
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v6, v12

    .line 1650
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v12

    move v7, v12

    .line 1651
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move v8, v12

    .line 1652
    move v12, v8

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    .line 1653
    move v12, v9

    move v13, v4

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move v10, v12

    .line 1654
    move v12, v10

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v12, v13, :cond_2

    .line 1655
    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move v10, v12

    .line 1663
    :cond_0
    :goto_1
    move v12, v6

    move v13, v10

    add-int/2addr v12, v13

    move v0, v12

    :goto_2
    return v0

    .line 1638
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1641
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1644
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1657
    :cond_2
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v10

    sub-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v11, v12

    .line 1659
    move v12, v11

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v12, v13, :cond_0

    .line 1660
    const/4 v12, 0x0

    move v13, v10

    move-object v14, v3

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move v15, v11

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v10, v12

    goto :goto_1

    .line 1639
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 5

    .prologue
    .line 1668
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 1669
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 1675
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v0, v3

    :goto_0
    return v0

    .line 1673
    :sswitch_0
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 1669
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 1734
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 1735
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 891
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 1740
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 1741
    move-object v3, v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .line 1591
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move v3, v14

    .line 1592
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v4, v14

    .line 1593
    const/4 v14, 0x0

    move v5, v14

    .line 1594
    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v6, v14

    .line 1595
    const/4 v14, 0x0

    move v7, v14

    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_0

    .line 1596
    move-object v14, v1

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v8, v14

    .line 1597
    move-object v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v9, v14

    .line 1598
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move v15, v3

    sub-int/2addr v14, v15

    move v10, v14

    .line 1599
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move v15, v4

    sub-int/2addr v14, v15

    move v11, v14

    .line 1600
    const/4 v14, 0x0

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v12, v14

    .line 1601
    const/4 v14, 0x0

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    .line 1602
    const/4 v14, 0x0

    move v15, v10

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v3, v14

    .line 1603
    const/4 v14, 0x0

    move v15, v11

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v4, v14

    .line 1604
    move v14, v5

    move v15, v12

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v13

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v5, v14

    .line 1595
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1606
    :cond_0
    move v14, v5

    move v0, v14

    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1807
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1773
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1611
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1612
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1613
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 1614
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1615
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1616
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1617
    move-object v9, v1

    move v10, v2

    move v11, v7

    move v12, v2

    move v13, v8

    add-int/2addr v12, v13

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1618
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v2, v9

    .line 1619
    move v9, v2

    move v0, v9

    return v0
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1624
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1625
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move-object v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1626
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v9, v10

    move v2, v9

    .line 1627
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1628
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1629
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1630
    move-object v9, v1

    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    move v11, v7

    move v12, v2

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1631
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    move v2, v9

    .line 1632
    move v9, v2

    move v0, v9

    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 20

    .prologue
    .line 1201
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v8, v16

    .line 1203
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 1204
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v10, v16

    .line 1205
    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v11, v16

    .line 1206
    const/16 v16, 0x0

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v12, v16

    .line 1207
    move/from16 v16, v11

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 1208
    move-object/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v9

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1209
    move-object/from16 v16, v7

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1211
    move/from16 v16, v3

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v4

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v14, v16

    .line 1213
    move/from16 v16, v5

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v18, v6

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v15, v16

    .line 1217
    move-object/from16 v16, v2

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 1218
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v1, v16

    return v1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 1176
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v12

    .line 1178
    move v12, v2

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    move v14, v3

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v8, v12

    .line 1181
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    move v14, v5

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v9, v12

    .line 1185
    move v12, v9

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v10, v12

    .line 1186
    move v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v13, :cond_0

    move v12, v6

    if-ltz v12, :cond_0

    .line 1187
    move v12, v10

    if-eqz v12, :cond_1

    move v12, v9

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_0
    move v11, v12

    .line 1190
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v9, v12

    .line 1192
    :cond_0
    move-object v12, v1

    move v13, v8

    move v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1193
    return-void

    .line 1187
    :cond_1
    move v12, v6

    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 3

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1115
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1116
    return-void
.end method

.method private shouldCollapse()Z
    .locals 6

    .prologue
    .line 1225
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1235
    :goto_0
    return v0

    .line 1227
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1228
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1229
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1230
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1232
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1228
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1235
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 1798
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 1800
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1801
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1800
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1803
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1804
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1769
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 3

    .prologue
    .line 559
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 561
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 562
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    move-result v2

    .line 564
    :cond_0
    return-void

    .line 559
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 431
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 433
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 1764
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 7

    .prologue
    .line 1746
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 1751
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    .line 1752
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    move-object v0, v2

    .line 1758
    :goto_0
    return-object v0

    .line 1753
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_1

    .line 1754
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 1755
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 1756
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 1758
    :cond_2
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 2

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 2

    .prologue
    .line 1012
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getContentInsetRight()I
    .locals 2

    .prologue
    .line 1031
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getContentInsetStart()I
    .locals 2

    .prologue
    .line 954
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 840
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 731
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 861
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v0, v1

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 1778
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v1, :cond_0

    .line 1779
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 1781
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v0, v1

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 903
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 904
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 438
    const/4 v4, 0x0

    move v0, v4

    .line 452
    :goto_0
    return v0

    .line 441
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move-object v1, v4

    .line 442
    move-object v4, v1

    if-nez v4, :cond_1

    .line 443
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 446
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    move v2, v4

    .line 447
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 448
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 449
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 447
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1121
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1122
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1155
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1156
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 1157
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1160
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v4, :cond_1

    .line 1161
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1162
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1163
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1167
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1168
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1171
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 43

    .prologue
    .line 1376
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v34, v2

    invoke-static/range {v34 .. v34}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    const/16 v34, 0x1

    :goto_0
    move/from16 v8, v34

    .line 1377
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v34

    move/from16 v9, v34

    .line 1378
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v34

    move/from16 v10, v34

    .line 1379
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v34

    move/from16 v11, v34

    .line 1380
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v34

    move/from16 v12, v34

    .line 1381
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v34

    move/from16 v13, v34

    .line 1382
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v34

    move/from16 v14, v34

    .line 1383
    move/from16 v34, v11

    move/from16 v15, v34

    .line 1384
    move/from16 v34, v9

    move/from16 v35, v12

    sub-int v34, v34, v35

    move/from16 v16, v34

    .line 1386
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v34, v0

    move-object/from16 v17, v34

    .line 1387
    move-object/from16 v34, v17

    const/16 v35, 0x0

    move-object/from16 v36, v17

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v40, v36

    move/from16 v41, v37

    move/from16 v42, v38

    move/from16 v36, v42

    move-object/from16 v37, v40

    move/from16 v38, v41

    move/from16 v39, v42

    aput v39, v37, v38

    aput v36, v34, v35

    .line 1390
    move-object/from16 v34, v2

    invoke-static/range {v34 .. v34}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v34

    move/from16 v18, v34

    .line 1392
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 1393
    move/from16 v34, v8

    if-eqz v34, :cond_f

    .line 1394
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    .line 1402
    :cond_0
    :goto_1
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1403
    move/from16 v34, v8

    if-eqz v34, :cond_10

    .line 1404
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    .line 1412
    :cond_1
    :goto_2
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 1413
    move/from16 v34, v8

    if-eqz v34, :cond_11

    .line 1414
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v35, v0

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    .line 1422
    :cond_2
    :goto_3
    move-object/from16 v34, v17

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v37

    move/from16 v38, v15

    sub-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    aput v36, v34, v35

    .line 1423
    move-object/from16 v34, v17

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v37

    move/from16 v38, v9

    move/from16 v39, v12

    sub-int v38, v38, v39

    move/from16 v39, v16

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    aput v36, v34, v35

    .line 1424
    move/from16 v34, v15

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v35

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v15, v34

    .line 1425
    move/from16 v34, v16

    move/from16 v35, v9

    move/from16 v36, v12

    sub-int v35, v35, v36

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v36

    sub-int v35, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v16, v34

    .line 1427
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 1428
    move/from16 v34, v8

    if-eqz v34, :cond_12

    .line 1429
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v35, v0

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    .line 1437
    :cond_3
    :goto_4
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1438
    move/from16 v34, v8

    if-eqz v34, :cond_13

    .line 1439
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    .line 1447
    :cond_4
    :goto_5
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    move/from16 v19, v34

    .line 1448
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v34

    move/from16 v20, v34

    .line 1449
    const/16 v34, 0x0

    move/from16 v21, v34

    .line 1450
    move/from16 v34, v19

    if-eqz v34, :cond_5

    .line 1451
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v22, v34

    .line 1452
    move/from16 v34, v21

    move-object/from16 v35, v22

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v36

    add-int v35, v35, v36

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v36, v0

    add-int v35, v35, v36

    add-int v34, v34, v35

    move/from16 v21, v34

    .line 1454
    :cond_5
    move/from16 v34, v20

    if-eqz v34, :cond_6

    .line 1455
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v22, v34

    .line 1456
    move/from16 v34, v21

    move-object/from16 v35, v22

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v36

    add-int v35, v35, v36

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v36, v0

    add-int v35, v35, v36

    add-int v34, v34, v35

    move/from16 v21, v34

    .line 1459
    :cond_6
    move/from16 v34, v19

    if-nez v34, :cond_7

    move/from16 v34, v20

    if-eqz v34, :cond_d

    .line 1461
    :cond_7
    move/from16 v34, v19

    if-eqz v34, :cond_14

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    :goto_6
    move-object/from16 v23, v34

    .line 1462
    move/from16 v34, v20

    if-eqz v34, :cond_15

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    :goto_7
    move-object/from16 v24, v34

    .line 1463
    move-object/from16 v34, v23

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v34

    .line 1464
    move-object/from16 v34, v24

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v26, v34

    .line 1465
    move/from16 v34, v19

    if-eqz v34, :cond_8

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v34

    if-gtz v34, :cond_9

    :cond_8
    move/from16 v34, v20

    if-eqz v34, :cond_16

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v34

    if-lez v34, :cond_16

    :cond_9
    const/16 v34, 0x1

    :goto_8
    move/from16 v27, v34

    .line 1468
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v34, v0

    const/16 v35, 0x70

    and-int/lit8 v34, v34, 0x70

    sparse-switch v34, :sswitch_data_0

    .line 1474
    move/from16 v34, v10

    move/from16 v35, v13

    sub-int v34, v34, v35

    move/from16 v35, v14

    sub-int v34, v34, v35

    move/from16 v28, v34

    .line 1475
    move/from16 v34, v28

    move/from16 v35, v21

    sub-int v34, v34, v35

    const/16 v35, 0x2

    div-int/lit8 v34, v34, 0x2

    move/from16 v29, v34

    .line 1476
    move/from16 v34, v29

    move-object/from16 v35, v25

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_17

    .line 1477
    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v29, v34

    .line 1486
    :cond_a
    :goto_9
    move/from16 v34, v13

    move/from16 v35, v29

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1493
    :goto_a
    move/from16 v34, v8

    if-eqz v34, :cond_19

    .line 1494
    move/from16 v34, v27

    if-eqz v34, :cond_18

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v34, v0

    :goto_b
    move-object/from16 v35, v17

    const/16 v36, 0x1

    aget v35, v35, v36

    sub-int v34, v34, v35

    move/from16 v28, v34

    .line 1495
    move/from16 v34, v16

    const/16 v35, 0x0

    move/from16 v36, v28

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v16, v34

    .line 1496
    move-object/from16 v34, v17

    const/16 v35, 0x1

    const/16 v36, 0x0

    move/from16 v37, v28

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    aput v36, v34, v35

    .line 1497
    move/from16 v34, v16

    move/from16 v29, v34

    .line 1498
    move/from16 v34, v16

    move/from16 v30, v34

    .line 1500
    move/from16 v34, v19

    if-eqz v34, :cond_b

    .line 1501
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v31, v34

    .line 1502
    move/from16 v34, v29

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v32, v34

    .line 1503
    move/from16 v34, v22

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v33, v34

    .line 1504
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    move/from16 v35, v32

    move/from16 v36, v22

    move/from16 v37, v29

    move/from16 v38, v33

    invoke-virtual/range {v34 .. v38}, Landroid/widget/TextView;->layout(IIII)V

    .line 1505
    move/from16 v34, v32

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v29, v34

    .line 1506
    move/from16 v34, v33

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1508
    :cond_b
    move/from16 v34, v20

    if-eqz v34, :cond_c

    .line 1509
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v31, v34

    .line 1510
    move/from16 v34, v22

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1511
    move/from16 v34, v30

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v32, v34

    .line 1512
    move/from16 v34, v22

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v33, v34

    .line 1513
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    move/from16 v35, v32

    move/from16 v36, v22

    move/from16 v37, v30

    move/from16 v38, v33

    invoke-virtual/range {v34 .. v38}, Landroid/widget/TextView;->layout(IIII)V

    .line 1514
    move/from16 v34, v30

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v30, v34

    .line 1515
    move/from16 v34, v33

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1517
    :cond_c
    move/from16 v34, v27

    if-eqz v34, :cond_d

    .line 1518
    move/from16 v34, v29

    move/from16 v35, v30

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v16, v34

    .line 1553
    :cond_d
    :goto_c
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    invoke-direct/range {v34 .. v36}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1554
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v22, v34

    .line 1555
    const/16 v34, 0x0

    move/from16 v23, v34

    :goto_d
    move/from16 v34, v23

    move/from16 v35, v22

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    .line 1556
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move/from16 v36, v23

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    .line 1555
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 1376
    :cond_e
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 1397
    :cond_f
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    goto/16 :goto_1

    .line 1407
    :cond_10
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    goto/16 :goto_2

    .line 1417
    :cond_11
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v35, v0

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    goto/16 :goto_3

    .line 1432
    :cond_12
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v35, v0

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    goto/16 :goto_4

    .line 1442
    :cond_13
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    move/from16 v36, v15

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v15, v34

    goto/16 :goto_5

    .line 1461
    :cond_14
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    goto/16 :goto_6

    .line 1462
    :cond_15
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    goto/16 :goto_7

    .line 1465
    :cond_16
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 1470
    :sswitch_0
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v34

    move-object/from16 v35, v25

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1471
    goto/16 :goto_a

    .line 1479
    :cond_17
    move/from16 v34, v10

    move/from16 v35, v14

    sub-int v34, v34, v35

    move/from16 v35, v21

    sub-int v34, v34, v35

    move/from16 v35, v29

    sub-int v34, v34, v35

    move/from16 v35, v13

    sub-int v34, v34, v35

    move/from16 v30, v34

    .line 1481
    move/from16 v34, v30

    move-object/from16 v35, v25

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_a

    .line 1482
    const/16 v34, 0x0

    move/from16 v35, v29

    move-object/from16 v36, v26

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v36, v0

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v37, v30

    sub-int v36, v36, v37

    sub-int v35, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v29, v34

    goto/16 :goto_9

    .line 1489
    :sswitch_1
    move/from16 v34, v10

    move/from16 v35, v14

    sub-int v34, v34, v35

    move-object/from16 v35, v26

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v35, v21

    sub-int v34, v34, v35

    move/from16 v22, v34

    goto/16 :goto_a

    .line 1494
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 1521
    :cond_19
    move/from16 v34, v27

    if-eqz v34, :cond_1c

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v34, v0

    :goto_e
    move-object/from16 v35, v17

    const/16 v36, 0x0

    aget v35, v35, v36

    sub-int v34, v34, v35

    move/from16 v28, v34

    .line 1522
    move/from16 v34, v15

    const/16 v35, 0x0

    move/from16 v36, v28

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    add-int v34, v34, v35

    move/from16 v15, v34

    .line 1523
    move-object/from16 v34, v17

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v28

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    aput v36, v34, v35

    .line 1524
    move/from16 v34, v15

    move/from16 v29, v34

    .line 1525
    move/from16 v34, v15

    move/from16 v30, v34

    .line 1527
    move/from16 v34, v19

    if-eqz v34, :cond_1a

    .line 1528
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v31, v34

    .line 1529
    move/from16 v34, v29

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v32, v34

    .line 1530
    move/from16 v34, v22

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v33, v34

    .line 1531
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    move/from16 v35, v29

    move/from16 v36, v22

    move/from16 v37, v32

    move/from16 v38, v33

    invoke-virtual/range {v34 .. v38}, Landroid/widget/TextView;->layout(IIII)V

    .line 1532
    move/from16 v34, v32

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v29, v34

    .line 1533
    move/from16 v34, v33

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1535
    :cond_1a
    move/from16 v34, v20

    if-eqz v34, :cond_1b

    .line 1536
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v31, v34

    .line 1537
    move/from16 v34, v22

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1538
    move/from16 v34, v30

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v32, v34

    .line 1539
    move/from16 v34, v22

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v33, v34

    .line 1540
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    move/from16 v35, v30

    move/from16 v36, v22

    move/from16 v37, v32

    move/from16 v38, v33

    invoke-virtual/range {v34 .. v38}, Landroid/widget/TextView;->layout(IIII)V

    .line 1541
    move/from16 v34, v32

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v30, v34

    .line 1542
    move/from16 v34, v33

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v22, v34

    .line 1544
    :cond_1b
    move/from16 v34, v27

    if-eqz v34, :cond_d

    .line 1545
    move/from16 v34, v29

    move/from16 v35, v30

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v15, v34

    goto/16 :goto_c

    .line 1521
    :cond_1c
    const/16 v34, 0x0

    goto/16 :goto_e

    .line 1560
    :cond_1d
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-direct/range {v34 .. v36}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1561
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v23, v34

    .line 1562
    const/16 v34, 0x0

    move/from16 v24, v34

    :goto_f
    move/from16 v34, v24

    move/from16 v35, v23

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1e

    .line 1563
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move/from16 v36, v24

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    move/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v16, v34

    .line 1562
    add-int/lit8 v24, v24, 0x1

    goto :goto_f

    .line 1569
    :cond_1e
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-direct/range {v34 .. v36}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1570
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v36, v17

    invoke-direct/range {v34 .. v36}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v34

    move/from16 v24, v34

    .line 1571
    move/from16 v34, v11

    move/from16 v35, v9

    move/from16 v36, v11

    sub-int v35, v35, v36

    move/from16 v36, v12

    sub-int v35, v35, v36

    const/16 v36, 0x2

    div-int/lit8 v35, v35, 0x2

    add-int v34, v34, v35

    move/from16 v25, v34

    .line 1572
    move/from16 v34, v24

    const/16 v35, 0x2

    div-int/lit8 v34, v34, 0x2

    move/from16 v26, v34

    .line 1573
    move/from16 v34, v25

    move/from16 v35, v26

    sub-int v34, v34, v35

    move/from16 v27, v34

    .line 1574
    move/from16 v34, v27

    move/from16 v35, v24

    add-int v34, v34, v35

    move/from16 v28, v34

    .line 1575
    move/from16 v34, v27

    move/from16 v35, v15

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_20

    .line 1576
    move/from16 v34, v15

    move/from16 v27, v34

    .line 1581
    :cond_1f
    :goto_10
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v29, v34

    .line 1582
    const/16 v34, 0x0

    move/from16 v30, v34

    :goto_11
    move/from16 v34, v30

    move/from16 v35, v29

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_21

    .line 1583
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move/from16 v36, v30

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    move/from16 v36, v27

    move-object/from16 v37, v17

    move/from16 v38, v18

    invoke-direct/range {v34 .. v38}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v34

    move/from16 v27, v34

    .line 1582
    add-int/lit8 v30, v30, 0x1

    goto :goto_11

    .line 1577
    :cond_20
    move/from16 v34, v28

    move/from16 v35, v16

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_1f

    .line 1578
    move/from16 v34, v27

    move/from16 v35, v28

    move/from16 v36, v16

    sub-int v35, v35, v36

    sub-int v34, v34, v35

    move/from16 v27, v34

    goto :goto_10

    .line 1587
    :cond_21
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 1588
    return-void

    .line 1468
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 30

    .prologue
    .line 1240
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v22, 0x0

    move/from16 v5, v22

    .line 1241
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 1242
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 1244
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 1247
    move-object/from16 v22, v2

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1248
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 1249
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 1257
    :goto_0
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 1258
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1259
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1261
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1262
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1264
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1268
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1269
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1271
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1273
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1275
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1279
    :cond_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v22

    move/from16 v12, v22

    .line 1280
    move/from16 v22, v5

    move/from16 v23, v12

    move/from16 v24, v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1281
    move-object/from16 v22, v8

    move/from16 v23, v9

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v26, v11

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1283
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 1284
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1285
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1287
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 1288
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1290
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1294
    :cond_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v22

    move/from16 v14, v22

    .line 1295
    move/from16 v22, v5

    move/from16 v23, v14

    move/from16 v24, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1296
    move-object/from16 v22, v8

    move/from16 v23, v10

    const/16 v24, 0x0

    move/from16 v25, v14

    move/from16 v26, v13

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1298
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1299
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1301
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1303
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1307
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1308
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1310
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1312
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1316
    :cond_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v22

    move/from16 v15, v22

    .line 1317
    const/16 v22, 0x0

    move/from16 v16, v22

    :goto_1
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1318
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1319
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v18, v22

    .line 1320
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1317
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1251
    :cond_6
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 1252
    const/16 v22, 0x1

    move/from16 v10, v22

    goto/16 :goto_0

    .line 1325
    :cond_7
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1327
    move/from16 v22, v6

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v17

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1328
    move/from16 v22, v7

    move-object/from16 v23, v17

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    goto :goto_2

    .line 1332
    :cond_8
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 1333
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 1334
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 1335
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 1336
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1337
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v26, v4

    move/from16 v27, v18

    move-object/from16 v28, v8

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v22

    move/from16 v16, v22

    .line 1340
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 1341
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1342
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1345
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1346
    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v19

    add-int v26, v26, v27

    move/from16 v27, v4

    move/from16 v28, v17

    move/from16 v29, v18

    add-int v28, v28, v29

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v16, v22

    .line 1350
    move/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1352
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1356
    :cond_a
    move/from16 v22, v5

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1357
    move/from16 v22, v6

    move/from16 v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1361
    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1362
    move/from16 v22, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 1364
    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v3

    move/from16 v24, v7

    const/high16 v25, -0x1000000

    and-int v24, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v20, v22

    .line 1367
    move/from16 v22, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x10

    shl-int/lit8 v24, v24, 0x10

    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v21, v22

    .line 1371
    move-object/from16 v22, v2

    move/from16 v23, v20

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1372
    return-void

    .line 1371
    :cond_b
    move/from16 v24, v21

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1097
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v2, v5

    .line 1098
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1100
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    :goto_0
    move-object v3, v5

    .line 1101
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v5, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1102
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 1103
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1104
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1108
    :cond_0
    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v5, :cond_1

    .line 1109
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1111
    :cond_1
    return-void

    .line 1100
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    .prologue
    .line 333
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 334
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 336
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 337
    return-void

    .line 336
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1085
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1087
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1088
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1091
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1092
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1131
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1132
    move v4, v2

    if-nez v4, :cond_0

    .line 1133
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1136
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v4, :cond_1

    .line 1137
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1138
    move v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1139
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1143
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1144
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1147
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 7

    .prologue
    .line 1785
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1787
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 1788
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 1789
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    .line 1790
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v5, v6, :cond_0

    .line 1791
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 1792
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1787
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1795
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4

    .prologue
    .line 1816
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 1817
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1818
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 6

    .prologue
    .line 993
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 994
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 6

    .prologue
    .line 935
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 936
    return-void
.end method

.method public setLogo(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 466
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 467
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 474
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 475
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_1
    return-void

    .line 470
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 472
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 514
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 515
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 10

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v4, :cond_0

    .line 424
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 397
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    move-object v3, v4

    .line 398
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 399
    goto :goto_0

    .line 402
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 403
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 404
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 407
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v4, :cond_3

    .line 408
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 411
    :cond_3
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 412
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 413
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 414
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 421
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 422
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 423
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 424
    goto :goto_0

    .line 416
    :cond_4
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 417
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 418
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 419
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 5

    .prologue
    .line 1825
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 1826
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 1827
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 743
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    return-void

    .line 743
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 758
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 759
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 761
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 776
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 777
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 793
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 794
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 801
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 802
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_1
    return-void

    .line 797
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 799
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 827
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 915
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 916
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 849
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 850
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 851
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 313
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 314
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 315
    move v2, v1

    if-nez v2, :cond_1

    .line 316
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 639
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 651
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 652
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 653
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 654
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 655
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 656
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 657
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 659
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v3, :cond_1

    .line 660
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 664
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 670
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 671
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 674
    return-void

    .line 666
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 668
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 692
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 693
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 694
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 696
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 716
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 717
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 718
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 597
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 598
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 599
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 600
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 601
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 602
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 603
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 605
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v3, :cond_1

    .line 606
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 610
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 616
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 617
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 620
    return-void

    .line 612
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 614
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 682
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 683
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 685
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 704
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 705
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 706
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
