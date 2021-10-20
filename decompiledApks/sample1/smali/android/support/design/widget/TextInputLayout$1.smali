.class Landroid/support/design/widget/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
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
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/TextInputLayout;->access$100(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 203
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$200(Landroid/support/design/widget/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v3, v1

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/design/widget/TextInputLayout;->access$300(Landroid/support/design/widget/TextInputLayout;I)V

    .line 206
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
