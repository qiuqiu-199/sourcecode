.class Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public fileSize:Landroid/widget/TextView;

.field public filename:Landroid/widget/TextView;

.field public removeButton:Landroid/view/View;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

.field public thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 834
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    .line 835
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f090170

    .line 836
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    const v1, 0x7f090171

    .line 837
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;

    const v1, 0x7f09002c

    .line 838
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->removeButton:Landroid/view/View;

    const v1, 0x7f090315

    .line 839
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
