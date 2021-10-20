.class Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;
.super Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonEclairMr1;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z

    move-result v2

    .line 180
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 184
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z

    move-result v2

    .line 175
    return-void
.end method
