.class Lorg/inaturalist/android/BaseTab$3;
.super Ljava/lang/Object;
.source "BaseTab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 291
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$3;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 294
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$3;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {p2}, Lorg/inaturalist/android/BaseTab;->access$300(Lorg/inaturalist/android/BaseTab;)Lorg/inaturalist/android/ProjectsAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/inaturalist/android/ProjectsAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 296
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$3;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {p2, p1, p3}, Lorg/inaturalist/android/BaseTab;->onItemSelected(Lorg/inaturalist/android/BetterJSONObject;I)V

    return-void
.end method
