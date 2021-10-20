.class public abstract Landroid/support/v7/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionMode;->mTag:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/ActionMode;->mTitleOptionalHint:Z

    move v0, v1

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isUiFocusable()Z
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/ActionMode;->mTitleOptionalHint:Z

    .line 131
    return-void
.end method
