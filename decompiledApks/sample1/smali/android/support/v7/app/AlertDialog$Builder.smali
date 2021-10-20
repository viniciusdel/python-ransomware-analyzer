.class public Landroid/support/v7/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Landroid/support/v7/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 280
    move-object v3, v0

    new-instance v4, Landroid/support/v7/app/AlertController$AlertParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v1

    move v10, v2

    invoke-static {v9, v10}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    .line 282
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    .line 283
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .locals 8

    .prologue
    .line 882
    move-object v0, p0

    new-instance v2, Landroid/support/v7/app/AlertDialog;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v2

    .line 883
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/app/AlertDialog;->access$000(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertController;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController$AlertParams;->apply(Landroid/support/v7/app/AlertController;)V

    .line 884
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 885
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v2, :cond_0

    .line 886
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v2, :cond_1

    .line 891
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_1
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 555
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 475
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 476
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 573
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 574
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 575
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 330
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 362
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 372
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIconAttribute(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 8

    .prologue
    .line 385
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 386
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 387
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    iput v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 388
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setInverseBackgroundForced(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 862
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 863
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 526
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 527
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 528
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 539
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 540
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 541
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 340
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 350
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 601
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 602
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 603
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 604
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 605
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 663
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 664
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 665
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 666
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 667
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 668
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 631
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 632
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 633
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 634
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 426
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 439
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 440
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 451
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 452
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 465
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 494
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 495
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 505
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 787
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 788
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 515
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 399
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v4, v4, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 400
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 413
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 414
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 870
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 871
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 690
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v5, v5, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 691
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 692
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 693
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 694
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 719
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 720
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v6, v2

    iput v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 721
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 722
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 723
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 772
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 773
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 774
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 775
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 746
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 747
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 748
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 749
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 305
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 315
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setView(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 801
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 802
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 803
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 814
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 815
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 816
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 817
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 8

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 845
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 846
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 847
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v7, v2

    iput v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 848
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v7, v3

    iput v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 849
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v7, v4

    iput v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 850
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    move v7, v5

    iput v7, v6, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 851
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public show()Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    .line 901
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    move-object v1, v2

    .line 902
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 903
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
