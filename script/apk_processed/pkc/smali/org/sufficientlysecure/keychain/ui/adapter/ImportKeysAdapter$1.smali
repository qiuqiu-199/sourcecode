.class Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;
.super Ljava/lang/Object;
.source "ImportKeysAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

.field final synthetic val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

.field final synthetic val$keyState:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 164
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$keyState:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$position:I

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 167
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$keyState:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    iget-boolean v4, v4, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mDownloaded:Z

    const/4 v0, 0x1

    if-nez v4, :cond_0

    .line 168
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$position:I

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-static {v4, v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$position:I

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;->val$keyState:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    iget-boolean v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mShowed:Z

    xor-int/2addr v0, v2

    invoke-static {v4, v1, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$300(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;IZ)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
