.class Lorg/inaturalist/android/INaturalistApp$1;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Lcom/livefront/bridge/SavedStateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$1;->this$0:Lorg/inaturalist/android/INaturalistApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
