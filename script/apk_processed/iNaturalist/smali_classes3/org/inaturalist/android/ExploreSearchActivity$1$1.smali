.class Lorg/inaturalist/android/ExploreSearchActivity$1$1;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreSearchActivity$1;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchType:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity$1;Ljava/lang/String;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->this$1:Lorg/inaturalist/android/ExploreSearchActivity$1;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->val$searchType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->this$1:Lorg/inaturalist/android/ExploreSearchActivity$1;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->val$query:Ljava/lang/String;

    iget v2, p0, Lorg/inaturalist/android/ExploreSearchActivity$1$1;->val$searchType:I

    invoke-static {v0, v1, v2}, Lorg/inaturalist/android/ExploreSearchActivity;->access$700(Lorg/inaturalist/android/ExploreSearchActivity;Ljava/lang/String;I)V

    return-void
.end method
