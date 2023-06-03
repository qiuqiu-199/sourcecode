.class Lorg/inaturalist/android/ObservationEditor$25;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 2043
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2046
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2047
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$3400(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 2049
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2050
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2051
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2052
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$25;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
