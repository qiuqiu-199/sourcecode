.class Lorg/inaturalist/android/ExploreSearchActivity$1;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreSearchActivity;->access$000(Lorg/inaturalist/android/ExploreSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$100(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$200(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f080243

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$200(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "#646464"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 172
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$300(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 173
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$400(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v3, "#646464"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 174
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v2, v1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    :goto_0
    if-nez p1, :cond_2

    .line 177
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$500(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$600(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iput-object v0, v1, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$1;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$800(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ExploreSearchActivity$1$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/inaturalist/android/ExploreSearchActivity$1$1;-><init>(Lorg/inaturalist/android/ExploreSearchActivity$1;Ljava/lang/String;I)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
