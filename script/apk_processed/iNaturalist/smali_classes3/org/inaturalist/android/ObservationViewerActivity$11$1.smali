.class Lorg/inaturalist/android/ObservationViewerActivity$11$1;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$11;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1101
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1102
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1103
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$11;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
