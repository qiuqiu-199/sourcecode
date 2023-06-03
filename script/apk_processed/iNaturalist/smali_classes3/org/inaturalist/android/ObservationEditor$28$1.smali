.class Lorg/inaturalist/android/ObservationEditor$28$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$28;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$28;)V
    .locals 0

    .line 2363
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2366
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$3400(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 2367
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2368
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationEditor;->access$3400(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const-wide/16 v1, 0x1f4

    .line 2371
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2373
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2376
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2377
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28$1;->this$1:Lorg/inaturalist/android/ObservationEditor$28;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
