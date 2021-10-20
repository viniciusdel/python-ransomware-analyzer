.class Landroid/support/v7/app/WindowDecorActionBar$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$000(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 140
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 142
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$302(Landroid/support/v7/app/WindowDecorActionBar;Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v2

    .line 145
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$400(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$400(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 149
    :cond_1
    return-void
.end method
