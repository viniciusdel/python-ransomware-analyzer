.class public final Landroid/support/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mParent:Landroid/support/design/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 4

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 940
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 946
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    .line 947
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1030
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 1040
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    move v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 954
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    .line 1122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public select()V
    .locals 3

    .prologue
    .line 1115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1116
    return-void
.end method

.method public setContentDescription(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1136
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1151
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v2, :cond_0

    .line 1152
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout;->access$100(Landroid/support/design/widget/TabLayout;I)V

    .line 1154
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 9
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1018
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    invoke-static {v4, v5}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;I)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v4

    move-object v2, v4

    .line 1019
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v3, v4

    .line 1020
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 996
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 997
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v2, :cond_0

    .line 998
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout;->access$100(Landroid/support/design/widget/TabLayout;I)V

    .line 1000
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1080
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1065
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1066
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v2, :cond_0

    .line 1067
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout;->access$100(Landroid/support/design/widget/TabLayout;I)V

    .line 1069
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setPosition(I)V
    .locals 4

    .prologue
    .line 1044
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 1045
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 965
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 966
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setText(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1108
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1092
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1093
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v2, :cond_0

    .line 1094
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout;->access$100(Landroid/support/design/widget/TabLayout;I)V

    .line 1096
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
