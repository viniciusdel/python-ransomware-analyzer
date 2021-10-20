.class Landroid/support/v4/content/EditorCompatGingerbread;
.super Ljava/lang/Object;
.source "EditorCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p0    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 30
    move-object v2, v0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method
