.class Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterHolder"
.end annotation


# instance fields
.field public mAddButton:Landroid/widget/Button;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 846
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    .line 847
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f09016f

    .line 848
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;->mAddButton:Landroid/widget/Button;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
