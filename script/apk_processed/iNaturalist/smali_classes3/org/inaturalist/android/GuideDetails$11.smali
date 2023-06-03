.class Lorg/inaturalist/android/GuideDetails$11;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 954
    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p2}, Lorg/inaturalist/android/GuideDetails;->access$600(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 955
    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p2}, Lorg/inaturalist/android/GuideDetails;->access$1800(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/GuideTaxonFilter;->setSearchText(Ljava/lang/String;)V

    .line 957
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2300(Lorg/inaturalist/android/GuideDetails;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 958
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2400(Lorg/inaturalist/android/GuideDetails;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p2}, Lorg/inaturalist/android/GuideDetails;->access$2300(Lorg/inaturalist/android/GuideDetails;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 961
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance p2, Lorg/inaturalist/android/GuideDetails$11$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/GuideDetails$11$1;-><init>(Lorg/inaturalist/android/GuideDetails$11;)V

    invoke-static {p1, p2}, Lorg/inaturalist/android/GuideDetails;->access$2302(Lorg/inaturalist/android/GuideDetails;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 968
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2400(Lorg/inaturalist/android/GuideDetails;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p2}, Lorg/inaturalist/android/GuideDetails;->access$2300(Lorg/inaturalist/android/GuideDetails;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
