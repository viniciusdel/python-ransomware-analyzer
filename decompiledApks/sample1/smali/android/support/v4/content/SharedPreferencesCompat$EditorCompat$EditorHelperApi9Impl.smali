.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"

# interfaces
.implements Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditorHelperApi9Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/EditorCompatGingerbread;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 46
    return-void
.end method
