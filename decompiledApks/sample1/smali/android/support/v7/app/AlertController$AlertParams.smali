.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 813
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 761
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 763
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 786
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 790
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 798
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 814
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 815
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 816
    move-object v2, v0

    move-object v3, v1

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 817
    return-void
.end method

.method private createListView(Landroid/support/v7/app/AlertController;)V
    .locals 16

    .prologue
    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v7/app/AlertController;->access$1100(Landroid/support/v7/app/AlertController;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    move-object v2, v5

    .line 880
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v5, :cond_5

    .line 881
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_4

    .line 882
    new-instance v5, Landroid/support/v7/app/AlertController$AlertParams$1;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v9, v1

    invoke-static {v9}, Landroid/support/v7/app/AlertController;->access$1200(Landroid/support/v7/app/AlertController;)I

    move-result v9

    const v10, 0x1020014

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    move-object v3, v5

    .line 942
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v5, :cond_0

    .line 943
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 949
    :cond_0
    move-object v5, v1

    move-object v6, v3

    invoke-static {v5, v6}, Landroid/support/v7/app/AlertController;->access$1502(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object v5

    .line 950
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {v5, v6}, Landroid/support/v7/app/AlertController;->access$1602(Landroid/support/v7/app/AlertController;I)I

    move-result v5

    .line 952
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_9

    .line 953
    move-object v5, v2

    new-instance v6, Landroid/support/v7/app/AlertController$AlertParams$3;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 976
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_2

    .line 977
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 980
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v5, :cond_a

    .line 981
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 985
    :cond_3
    :goto_2
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v7/app/AlertController;->access$1002(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    move-result-object v5

    .line 986
    return-void

    .line 897
    :cond_4
    new-instance v5, Landroid/support/v7/app/AlertController$AlertParams$2;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    move-object v11, v2

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/AlertController;)V

    move-object v3, v5

    goto :goto_0

    .line 926
    :cond_5
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v5, :cond_6

    .line 927
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->access$1300(Landroid/support/v7/app/AlertController;)I

    move-result v5

    move v4, v5

    .line 932
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    .line 933
    new-instance v5, Landroid/widget/SimpleCursorAdapter;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x1

    new-array v11, v11, [I

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const v14, 0x1020014

    aput v14, v12, v13

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v3, v5

    goto/16 :goto_0

    .line 929
    :cond_6
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->access$1400(Landroid/support/v7/app/AlertController;)I

    move-result v5

    move v4, v5

    goto :goto_3

    .line 935
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_8

    .line 936
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v5

    goto/16 :goto_0

    .line 938
    :cond_8
    new-instance v5, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v8, v4

    const v9, 0x1020014

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v3, v5

    goto/16 :goto_0

    .line 962
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v5, :cond_1

    .line 963
    move-object v5, v2

    new-instance v6, Landroid/support/v7/app/AlertController$AlertParams$4;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/widget/ListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 982
    :cond_a
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v5, :cond_3

    .line 983
    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public apply(Landroid/support/v7/app/AlertController;)V
    .locals 8

    .prologue
    .line 820
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 821
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 836
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 837
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 840
    move-object v2, v1

    const/4 v3, -0x1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 843
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 844
    move-object v2, v1

    const/4 v3, -0x2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 847
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 848
    move-object v2, v1

    const/4 v3, -0x3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 853
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_6

    .line 854
    :cond_5
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V

    .line 856
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 857
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v2, :cond_c

    .line 858
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 874
    :cond_7
    :goto_1
    return-void

    .line 823
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    .line 824
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 826
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 827
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 829
    :cond_a
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v2, :cond_b

    .line 830
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 832
    :cond_b
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v2, :cond_0

    .line 833
    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 861
    :cond_c
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 863
    :cond_d
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v2, :cond_7

    .line 864
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setView(I)V

    goto :goto_1
.end method
