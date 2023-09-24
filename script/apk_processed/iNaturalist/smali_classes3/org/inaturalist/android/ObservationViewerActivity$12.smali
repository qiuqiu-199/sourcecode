.class Lorg/inaturalist/android/ObservationViewerActivity$12;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->discardAddComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1156
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1157
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1159
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2300(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/MentionsAutoComplete;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->dismiss()V

    .line 1162
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1163
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1164
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$12;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
