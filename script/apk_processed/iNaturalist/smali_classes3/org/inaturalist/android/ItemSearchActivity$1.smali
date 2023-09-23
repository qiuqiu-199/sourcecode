.class Lorg/inaturalist/android/ItemSearchActivity$1;
.super Ljava/lang/Object;
.source "ItemSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ItemSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ItemSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ItemSearchActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity$1;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

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

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/inaturalist/android/ItemSearchActivity$1;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    iget-object p3, p3, Lorg/inaturalist/android/ItemSearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 172
    iget-object p2, p0, Lorg/inaturalist/android/ItemSearchActivity$1;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/inaturalist/android/ItemSearchActivity;->mSearchString:Ljava/lang/String;

    .line 173
    iget-object p2, p0, Lorg/inaturalist/android/ItemSearchActivity$1;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ItemSearchActivity;->access$000(Lorg/inaturalist/android/ItemSearchActivity;)Lorg/inaturalist/android/ProjectsAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/inaturalist/android/ItemSearchActivity$1;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ItemSearchActivity;->access$000(Lorg/inaturalist/android/ItemSearchActivity;)Lorg/inaturalist/android/ProjectsAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
