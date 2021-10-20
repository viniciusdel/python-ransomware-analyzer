.class Landroid/support/design/widget/TextInputLayout$2;
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
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout$2;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    return-void
.end method
