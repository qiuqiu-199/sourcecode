.class Lorg/inaturalist/android/IdentificationActivity$1;
.super Ljava/lang/Object;
.source "IdentificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/IdentificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/IdentificationActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/IdentificationActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "taxon_id"

    .line 141
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-static {v2}, Lorg/inaturalist/android/IdentificationActivity;->access$000(Lorg/inaturalist/android/IdentificationActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "id_remarks"

    .line 142
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-static {v2}, Lorg/inaturalist/android/IdentificationActivity;->access$100(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "species_guess"

    .line 143
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-static {v2}, Lorg/inaturalist/android/IdentificationActivity;->access$200(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconic_taxon_name"

    .line 144
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-static {v2}, Lorg/inaturalist/android/IdentificationActivity;->access$300(Lorg/inaturalist/android/IdentificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taxon_name"

    .line 145
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-static {v2}, Lorg/inaturalist/android/IdentificationActivity;->access$400(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_suggestion"

    .line 146
    iget-object v2, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    iget-boolean v2, v2, Lorg/inaturalist/android/IdentificationActivity;->mFromSuggestion:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/IdentificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity$1;->this$0:Lorg/inaturalist/android/IdentificationActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/IdentificationActivity;->finish()V

    return-void
.end method
