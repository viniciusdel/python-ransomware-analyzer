.class Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 117
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 118
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v3}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$200(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 140
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 143
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    .line 145
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 129
    :cond_1
    goto :goto_0
.end method

.method onEnd()V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 133
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 134
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$100(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    .line 135
    return-void
.end method
