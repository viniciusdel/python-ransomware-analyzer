.class Landroid/support/design/widget/TextInputLayout$3;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout$3;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout$3;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/TextInputLayout;->access$100(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 459
    return-void
.end method
