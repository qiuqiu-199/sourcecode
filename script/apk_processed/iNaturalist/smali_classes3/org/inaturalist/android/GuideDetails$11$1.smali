.class Lorg/inaturalist/android/GuideDetails$11$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$11;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$11;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$11;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$11$1;->this$1:Lorg/inaturalist/android/GuideDetails$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 964
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$11$1;->this$1:Lorg/inaturalist/android/GuideDetails$11;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$11;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$700(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method
