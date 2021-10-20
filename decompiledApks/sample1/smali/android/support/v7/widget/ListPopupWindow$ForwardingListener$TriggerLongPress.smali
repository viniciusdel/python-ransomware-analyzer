.class Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
    .locals 4

    .prologue
    .line 1518
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 5

    .prologue
    .line 1518
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1521
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->access$1000(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V

    .line 1522
    return-void
.end method
