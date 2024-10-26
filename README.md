# ESPECIESBD

## Instruções SQL

1. **Altere o nome do Pateta para Goofy**
    ```sql
    UPDATE animals a SET a.nome = 'Goofy' WHERE a.nome LIKE 'Pateta';
    ```

2. **Altere o peso do Garfield para 10 kilogramas**
    ```sql
    UPDATE animals a SET a.Peso = 10 WHERE a.nome LIKE 'Garfield';
    ```

3. **Altere a cor de todos os gatos para laranja**
    ```sql
    UPDATE animals a SET a.cor = 'laranja' WHERE a.raca LIKE 'Gato';
    ```

4. **Crie um campo altura para os animais**
    ```sql
    ALTER TABLE animals ADD COLUMN altura DECIMAL;
    ```

5. **Crie um campo observação para os animais**
    ```sql
    ALTER TABLE animals ADD COLUMN observacao VARCHAR(120);
    ```

6. **Remova todos os animais que pesam mais que 200 kilogramas**
    ```sql
    DELETE FROM animals a WHERE a.Peso > 200;
    ```

7. **Remova todos os animais que o nome inicie com a letra ‘C’**
    ```sql
    DELETE FROM animals a WHERE a.nome LIKE 'C%';
    ```

8. **Remova o campo cor dos animais**
    ```sql
    ALTER TABLE animals DROP COLUMN cor;
    ```

9. **Aumente o tamanho do campo nome dos animais para 80 caracteres**
    ```sql
    ALTER TABLE animals MODIFY COLUMN nome VARCHAR(80);
    ```

10. **Remova todos os gatos e cachorros**
    ```sql
    DELETE FROM animals a WHERE a.raca LIKE 'Gato' OR a.raca LIKE 'Cachorro';
    ```

11. **Remova o campo data de nascimento dos animais**
    ```sql
    ALTER TABLE animals DROP COLUMN dataNascimento;
    ```

12. **Remova todos os animais**
    ```sql
    DELETE FROM animals a;
    ```

13. **Remova a tabela especies**
    ```sql
    DROP TABLE animals;
    ```
