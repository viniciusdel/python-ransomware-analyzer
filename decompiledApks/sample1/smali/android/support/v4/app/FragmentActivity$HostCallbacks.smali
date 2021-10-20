.class Landroid/support/v4/app/FragmentActivity$HostCallbacks;
.super Landroid/support/v4/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentHostCallback",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    .prologue
    .line 876
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    .line 877
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 878
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 937
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 882
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 942
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public onGetHost()Landroid/support/v4/app/FragmentActivity;
    .locals 2

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 875
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->onGetHost()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 892
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 3

    .prologue
    .line 930
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v1, v2

    .line 931
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 3

    .prologue
    .line 947
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v1, v2

    .line 948
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onHasWindowAnimations()Z
    .locals 2

    .prologue
    .line 925
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 8
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 915
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 3

    .prologue
    .line 887
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 8

    .prologue
    .line 907
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 902
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 903
    return-void
.end method
