.class Lorg/inaturalist/android/BaseTab$2;
.super Ljava/lang/Object;
.source "BaseTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseTab;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseTab;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$2;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 285
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$2;->this$0:Lorg/inaturalist/android/BaseTab;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab$2;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v1}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/BaseTab;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
