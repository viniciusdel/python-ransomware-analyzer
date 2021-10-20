.class Landroid/support/design/widget/FloatingActionButton$2;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButton$2;->this$0:Landroid/support/design/widget/FloatingActionButton;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButton$2;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton$2;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton$2;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Landroid/support/design/widget/FloatingActionButton;)V

    .line 320
    return-void
.end method

.method public onShown()V
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton$2;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton$2;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onShown(Landroid/support/design/widget/FloatingActionButton;)V

    .line 315
    return-void
.end method
