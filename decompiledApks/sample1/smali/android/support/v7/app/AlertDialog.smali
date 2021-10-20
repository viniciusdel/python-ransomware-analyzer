.class public Landroid/support/v7/app/AlertDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field private mAlert:Landroid/support/v7/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 11

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    move v7, v2

    invoke-static {v6, v7}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 93
    move-object v4, v0

    new-instance v5, Landroid/support/v7/app/AlertController;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v5, v4, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    .line 94
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 11

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 99
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    move-object v4, v0

    new-instance v5, Landroid/support/v7/app/AlertController;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v5, v4, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    .line 101
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertController;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v0, v1

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/high16 v4, 0x1000000

    if-lt v3, v4, :cond_0

    .line 105
    move v3, v1

    move v0, v3

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 108
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 109
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 240
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertController;->installContent()V

    .line 241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v3, 0x1

    move v0, v3

    .line 248
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const/4 v3, 0x1

    move v0, v3

    .line 256
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 182
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 220
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 8

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 233
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 234
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v4, v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 235
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 173
    return-void
.end method
