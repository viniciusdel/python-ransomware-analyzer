.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final IS_AT_LEAST_FROYO:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    .line 164
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$1;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 181
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$2;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 187
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$3;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 197
    move-object v11, v0

    new-instance v12, Ljava/util/WeakHashMap;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 943
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$7;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 965
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$8;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1128
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$9;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1312
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$10;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1323
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$11;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1616
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$12;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 278
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    move v14, v3

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v11

    move-object v4, v11

    .line 281
    move-object v11, v0

    move-object v12, v4

    invoke-virtual {v12}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 283
    move-object v11, v1

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    move-object v5, v11

    .line 284
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v13, Landroid/support/v7/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    move v6, v11

    .line 286
    move-object v11, v5

    move v12, v6

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 288
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 289
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 291
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 292
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 293
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 294
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 295
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 296
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 297
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 298
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 301
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 312
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v14, Landroid/support/v7/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 314
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 316
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 323
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 324
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 326
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 329
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v12, Landroid/support/v7/widget/SearchView$4;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 339
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move v7, v11

    .line 340
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 341
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 344
    :cond_0
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 345
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 347
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v8, v11

    .line 348
    move v11, v8

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 349
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 352
    :cond_1
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v9, v11

    .line 353
    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 354
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 357
    :cond_2
    const/4 v11, 0x1

    move v10, v11

    .line 358
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    move v10, v11

    .line 359
    move-object v11, v0

    move v12, v10

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 361
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 364
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "android.speech.action.WEB_SEARCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 365
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 366
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v12, "android.speech.extra.LANGUAGE_MODEL"

    const-string v13, "web_search"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 369
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 370
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 372
    move-object v11, v0

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 373
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 374
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_4

    .line 375
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    .line 381
    :cond_3
    :goto_0
    move-object v11, v0

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v11, v12}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 382
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 383
    return-void

    .line 377
    :cond_4
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SearchView;I)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->onItemSelected(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SearchView;Z)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 6

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/SearchView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 404
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/SearchView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 394
    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 12

    .prologue
    .line 1269
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1270
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v1, v8

    .line 1271
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    move v2, v8

    .line 1272
    new-instance v8, Landroid/graphics/Rect;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v8

    .line 1273
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    move v4, v8

    .line 1274
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v8, :cond_1

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    :goto_0
    move v5, v8

    .line 1278
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 1280
    move v8, v4

    if-eqz v8, :cond_2

    .line 1281
    move-object v8, v3

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move v6, v8

    .line 1285
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1286
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v5

    add-int/2addr v8, v9

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 1288
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1290
    :cond_0
    return-void

    .line 1274
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1283
    :cond_2
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move v10, v5

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v6, v8

    goto :goto_1
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 1439
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v8, Landroid/content/Intent;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1440
    move-object v8, v7

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 1444
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 1445
    move-object v8, v7

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 1447
    :cond_0
    move-object v8, v7

    const-string v9, "user_query"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 1448
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 1449
    move-object v8, v7

    const-string v9, "query"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1451
    :cond_1
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 1452
    move-object v8, v7

    const-string v9, "intent_extra_data_key"

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1454
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 1455
    move-object v8, v7

    const-string v9, "app_data"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 1457
    :cond_3
    move v8, v5

    if-eqz v8, :cond_4

    .line 1458
    move-object v8, v7

    const-string v9, "action_key"

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 1459
    move-object v8, v7

    const-string v9, "action_msg"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1461
    :cond_4
    sget-boolean v8, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v8, :cond_5

    .line 1462
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 1464
    :cond_5
    move-object v8, v7

    move-object v0, v8

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 17

    .prologue
    .line 1563
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v1

    :try_start_0
    const-string v10, "suggest_intent_action"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1565
    move-object v9, v4

    if-nez v9, :cond_0

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-lt v9, v10, :cond_0

    .line 1566
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1568
    :cond_0
    move-object v9, v4

    if-nez v9, :cond_1

    .line 1569
    const-string v9, "android.intent.action.SEARCH"

    move-object v4, v9

    .line 1573
    :cond_1
    move-object v9, v1

    const-string v10, "suggest_intent_data"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1574
    sget-boolean v9, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v9, :cond_2

    move-object v9, v5

    if-nez v9, :cond_2

    .line 1575
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1578
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 1579
    move-object v9, v1

    const-string v10, "suggest_intent_data_id"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1580
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 1581
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1584
    :cond_3
    move-object v9, v5

    if-nez v9, :cond_4

    const/4 v9, 0x0

    :goto_0
    move-object v6, v9

    .line 1586
    move-object v9, v1

    const-string v10, "suggest_intent_query"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1587
    move-object v9, v1

    const-string v10, "suggest_intent_extra_data"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1589
    move-object v9, v0

    move-object v10, v4

    move-object v11, v6

    move-object v12, v8

    move-object v13, v7

    move v14, v2

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move-object v0, v9

    .line 1599
    :goto_1
    return-object v0

    .line 1584
    :cond_4
    move-object v9, v5

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1590
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 1593
    move-object v9, v1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    move v5, v9

    .line 1597
    :goto_2
    const-string v9, "SearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Search suggestions cursor at row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned exception."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-static {v9, v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 1599
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    .line 1594
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 1595
    const/4 v9, -0x1

    move v5, v9

    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v13

    move-object v3, v13

    .line 1493
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string v15, "android.intent.action.SEARCH"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 1494
    move-object v13, v4

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 1495
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object v5, v13

    .line 1502
    new-instance v13, Landroid/os/Bundle;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v6, v13

    .line 1503
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v13, :cond_0

    .line 1504
    move-object v13, v6

    const-string v14, "app_data"

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1510
    :cond_0
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v1

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v13

    .line 1513
    const-string v13, "free_form"

    move-object v8, v13

    .line 1514
    const/4 v13, 0x0

    move-object v9, v13

    .line 1515
    const/4 v13, 0x0

    move-object v10, v13

    .line 1516
    const/4 v13, 0x1

    move v11, v13

    .line 1518
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x8

    if-lt v13, v14, :cond_4

    .line 1519
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v12, v13

    .line 1520
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v13

    if-eqz v13, :cond_1

    .line 1521
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 1523
    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v13

    if-eqz v13, :cond_2

    .line 1524
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 1526
    :cond_2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1527
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 1529
    :cond_3
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    if-eqz v13, :cond_4

    .line 1530
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    move v11, v13

    .line 1533
    :cond_4
    move-object v13, v7

    const-string v14, "android.speech.extra.LANGUAGE_MODEL"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1534
    move-object v13, v7

    const-string v14, "android.speech.extra.PROMPT"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1535
    move-object v13, v7

    const-string v14, "android.speech.extra.LANGUAGE"

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1536
    move-object v13, v7

    const-string v14, "android.speech.extra.MAX_RESULTS"

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 1537
    move-object v13, v7

    const-string v14, "calling_package"

    move-object v15, v3

    if-nez v15, :cond_5

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1541
    move-object v13, v7

    const-string v14, "android.speech.extra.RESULTS_PENDINGINTENT"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 1542
    move-object v13, v7

    const-string v14, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    .line 1544
    move-object v13, v7

    move-object v0, v13

    return-object v0

    .line 1537
    :cond_5
    move-object v15, v3

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1472
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v3, v5

    .line 1473
    move-object v5, v2

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    move-object v4, v5

    .line 1474
    move-object v5, v3

    const-string v6, "calling_package"

    move-object v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1476
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1474
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 2

    .prologue
    .line 1168
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1169
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 3

    .prologue
    .line 1604
    move-object v0, p0

    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1605
    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1606
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 1054
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 1055
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 1064
    :goto_0
    return-object v0

    .line 1058
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 1059
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1061
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "   "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 1062
    move-object v4, v3

    new-instance v5, Landroid/text/style/ImageSpan;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1063
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 1064
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 3

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 845
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 846
    const/4 v3, 0x0

    move-object v1, v3

    .line 847
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    .line 852
    :cond_0
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 853
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v1

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object v2, v3

    .line 855
    move-object v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .line 858
    :goto_2
    return v0

    .line 849
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    goto :goto_0

    .line 855
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 858
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1609
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 2

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1396
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1402
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_1
    goto :goto_0

    .line 1403
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1404
    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed launch activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1418
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    const-string v6, "android.intent.action.SEARCH"

    move-object v4, v6

    .line 1419
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v3

    move v11, v1

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1420
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1421
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 10

    .prologue
    .line 1379
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 1380
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    move v7, v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1382
    move-object v6, v0

    move-object v7, v4

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1385
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1387
    const/4 v6, 0x1

    move v0, v6

    .line 1389
    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    .line 1172
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1173
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1174
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_1

    .line 1176
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-interface {v2}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1178
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1180
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1189
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v2

    .line 1186
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 8

    .prologue
    .line 1293
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    move v5, v1

    invoke-interface {v4, v5}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1295
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    move-result v4

    .line 1296
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1297
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1298
    const/4 v4, 0x1

    move v0, v4

    .line 1300
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private onItemSelected(I)Z
    .locals 4

    .prologue
    .line 1304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1306
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1307
    const/4 v2, 0x1

    move v0, v2

    .line 1309
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 3

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1193
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v1

    .line 1194
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1195
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1196
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1198
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 6

    .prologue
    .line 1154
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1155
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1156
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1158
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    .line 1159
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1161
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1162
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1165
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1009
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_0

    .line 1010
    const/4 v5, 0x0

    move v0, v5

    .line 1048
    :goto_0
    return v0

    .line 1012
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v5, :cond_1

    .line 1013
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1015
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1018
    move v5, v2

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x54

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 1020
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v5

    move v4, v5

    .line 1021
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1026
    :cond_3
    move v5, v2

    const/16 v6, 0x15

    if-eq v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x16

    if-ne v5, v6, :cond_6

    .line 1031
    :cond_4
    move v5, v2

    const/16 v6, 0x15

    if-ne v5, v6, :cond_5

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 1033
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1034
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1035
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1036
    sget-object v5, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1038
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1031
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v5

    goto :goto_1

    .line 1042
    :cond_6
    move v5, v2

    const/16 v6, 0x13

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1045
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 1048
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 1140
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    move-object v2, v4

    .line 1141
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1142
    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1143
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 1144
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1145
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1146
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1147
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1148
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v4

    .line 1150
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1151
    return-void

    .line 1142
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1144
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1203
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v3, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1206
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v1, v3

    .line 1208
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1209
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1211
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1222
    :cond_1
    :goto_1
    goto :goto_0

    .line 1212
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1215
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1220
    const-string v3, "SearchView"

    const-string v4, "Could not find voice search activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method private postUpdateFocusedState()V
    .locals 3

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 898
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 7

    .prologue
    .line 1346
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    move-object v2, v5

    .line 1347
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1348
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1351
    :cond_0
    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1353
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v4, v5

    .line 1354
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1357
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1366
    :goto_1
    goto :goto_0

    .line 1360
    :cond_1
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1364
    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setImeVisibility(Z)V
    .locals 6

    .prologue
    .line 922
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    .line 923
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 926
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 929
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 930
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1415
    return-void

    .line 1414
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 6

    .prologue
    .line 885
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 888
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 889
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move v5, v2

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 891
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 892
    move-object v4, v3

    move v5, v1

    if-eqz v5, :cond_5

    sget-object v5, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 894
    :cond_1
    return-void

    .line 885
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 888
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 889
    :cond_4
    const/16 v5, 0x8

    goto :goto_2

    .line 892
    :cond_5
    sget-object v5, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 7

    .prologue
    .line 901
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v5

    move v1, v5

    .line 902
    move v5, v1

    if-eqz v5, :cond_2

    sget-object v5, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    move-object v2, v5

    .line 903
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 904
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 905
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 907
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 908
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 909
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 911
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 912
    return-void

    .line 902
    :cond_2
    sget-object v5, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 5

    .prologue
    .line 1068
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    .line 1069
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1070
    return-void

    .line 1069
    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1078
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1079
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v2

    move v1, v2

    .line 1082
    move v2, v1

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1085
    move v2, v1

    const v3, -0x10001

    and-int/2addr v2, v3

    move v1, v2

    .line 1086
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1087
    move v2, v1

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    move v1, v2

    .line 1094
    move v2, v1

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    move v1, v2

    .line 1097
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1098
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v2, :cond_1

    .line 1099
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1103
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1104
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/SuggestionsAdapter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1106
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1107
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1111
    :cond_2
    return-void

    .line 1107
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateSubmitArea()V
    .locals 4

    .prologue
    .line 875
    move-object v0, p0

    const/16 v2, 0x8

    move v1, v2

    .line 876
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 879
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 881
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 882
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 5

    .prologue
    .line 866
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x8

    move v2, v3

    .line 867
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v3, :cond_1

    .line 869
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .line 871
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7

    .prologue
    .line 820
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroid/support/v7/widget/SearchView;->mIconified:Z

    .line 822
    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 824
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 826
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 828
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 831
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v5, :cond_4

    .line 832
    :cond_0
    const/16 v5, 0x8

    move v4, v5

    .line 836
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 839
    move-object v5, v0

    move v6, v3

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 840
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 841
    return-void

    .line 822
    :cond_1
    const/16 v5, 0x8

    goto :goto_0

    .line 824
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 828
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 834
    :cond_4
    const/4 v5, 0x0

    move v4, v5

    goto :goto_3

    .line 839
    :cond_5
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 5

    .prologue
    .line 1120
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x8

    move v2, v3

    .line 1121
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 1122
    const/4 v3, 0x0

    move v2, v3

    .line 1123
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1125
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1126
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 3

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 510
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 511
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 512
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 513
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 514
    return-void
.end method

.method public getImeOptions()I
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 776
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v0, v1

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 626
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 627
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    .line 633
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 628
    :cond_0
    sget-boolean v2, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 631
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    move v0, v1

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    move v0, v1

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object v0, v1

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 2

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    move v0, v1

    return v0
.end method

.method public isIconified()Z
    .locals 2

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mIconified:Z

    move v0, v1

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 2

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    move v0, v1

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 2

    .prologue
    .line 708
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    move v0, v1

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 4

    .prologue
    .line 1246
    move-object v0, p0

    move-object v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1247
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1248
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1249
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1250
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1251
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 4

    .prologue
    .line 1258
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v1, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1260
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1261
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1262
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1263
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 1265
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 917
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 918
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 919
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 782
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 783
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 812
    :goto_0
    return-void

    .line 787
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 788
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 790
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 810
    :cond_1
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    move v3, v5

    .line 811
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 812
    goto :goto_0

    .line 793
    :sswitch_0
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v5, :cond_2

    .line 794
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 796
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v5

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 798
    goto :goto_1

    .line 801
    :sswitch_1
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v5, :cond_1

    .line 802
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 807
    :sswitch_2
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v5, :cond_3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    :goto_2
    move v4, v5

    goto :goto_1

    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v5

    goto :goto_2

    .line 790
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 940
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method

.method onTextFocusChanged()V
    .locals 3

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1228
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1229
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 1232
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 1236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1238
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1239
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    .prologue
    .line 491
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 502
    :goto_0
    return v0

    .line 493
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 495
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 496
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v3, v4

    .line 497
    move v4, v3

    if-eqz v4, :cond_2

    .line 498
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 500
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 502
    :cond_3
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 448
    return-void
.end method

.method public setIconified(Z)V
    .locals 3

    .prologue
    .line 672
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 673
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 649
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 650
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 651
    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 458
    return-void
.end method

.method public setInputType(I)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 477
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    .line 767
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 768
    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .locals 4

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    .line 533
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 4

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 542
    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 524
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 563
    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .locals 4

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 551
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    .line 583
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 584
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 585
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 586
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 590
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    .line 593
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 605
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 606
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 607
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 4

    .prologue
    .line 726
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 727
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v2, v2, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v2, :cond_0

    .line 728
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter;

    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 731
    :cond_0
    return-void

    .line 728
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 424
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    .line 425
    sget-boolean v2, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v2, :cond_0

    .line 426
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 428
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 431
    :cond_1
    move-object v2, v0

    sget-boolean v3, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 433
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v2, :cond_2

    .line 436
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v3, "nm"

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 438
    :cond_2
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 439
    return-void

    .line 431
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 4

    .prologue
    .line 698
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 699
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 700
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 4

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 750
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 751
    return-void
.end method
